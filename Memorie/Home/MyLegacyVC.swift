//
//  MyLegacyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit
import Gallery
import SVProgressHUD
import Lightbox
import AVFoundation
import AVKit
import DropDown

var isViewingMyProfile: Bool! = true

class MyLegacyVC: UIViewController, LightboxControllerPageDelegate, LightboxControllerDismissalDelegate, CustomLegacyCellDelegate {
    var currentmessagevault: messagevault!
    var sortKey: String!
    
    var animateIndexPaths = Set<IndexPath>()
      func Delete(){
                      
          if let index = currentPosts.index(where: { $0.sortKey == sortKey}) {
            
            let finaldata: post = currentPosts[index]
                        DispatchQueue.main.async{
                          
                            let inputA: DeleteUserInput = DeleteUserInput(primaryKey: finaldata.primaryKey, sortKey: finaldata.sortKey)
                      
                            
                            DeletePost(input: inputA, methodhandler: Dummy)
                        
                                        
                            self.currentPosts.remove(at: index)
                     }
           
          
          DeletePopup.isHidden = true
            
          tblView.reloadData()
      }
        
        if let index = arrPosts.index(where: { $0.sortKey == sortKey}) {
                  
                  let finaldata: post = arrPosts[index]
                              DispatchQueue.main.async{
                                              
                                  arrPosts.remove(at: index)
                                self.SetFilter()
                           }


            }
        
         SetFilter()
       
    }
    
    @IBAction func DeleteTapped(_ sender: Any) {
        Delete()
    }
    @IBOutlet var DeletePopup: DeletePopupView!
       
        @IBAction func HideDeleteView(_ sender: Any) {
            DeletePopup.isHidden = true
        }
        
    
    func CustomLegacyTableViewCell(_ youtuberTableViewCell: CustomLegacyTVC, subscribeButtonTappedFor youtuber: String) {
        DeletePopup.isHidden = false
        sortKey = youtuber
    }
    
    //var selectedpost: post!
    func CustomLegacyTableViewCell(_ youtuberTableViewCell: CustomLegacyTVC, likeButtonTappedFor like: String) {
        
     
        if let index = arrPosts.index(where: { $0.sortKey == like}) {

            
            if arrPosts[index].comments == globalusername {
                arrPosts[index].comments = "n/a"
                let like: Int =  arrPosts[index].likes - 1
                if like < 0 {
                      arrPosts[index].likes = 0
                } else {
                    arrPosts[index].likes = like
                }
                
                
                    let input: ReactionInput = ReactionInput(eventId: arrPosts[index].sortKey, commentId: globalusername)
                
                let postinput: PostInput = PostInput(primaryKey: arrPosts[index].primaryKey, sortKey: arrPosts[index].sortKey, likes: arrPosts[index].likes)
                
                    UpdatePost(input: postinput, methodhandler: Dummy)
                    DeleteReaction(input: input, methodhandler: Dummy)
            } else {
                arrPosts[index].comments = globalusername
                arrPosts[index].likes = arrPosts[index].likes + 1
                
                    let input: ReactionInput = ReactionInput(eventId: arrPosts[index].sortKey, commentId: globalusername, content: "LIKE", createdAt: Date().SQL(), reactionType: "LIKE", lastEdited: Date().SQL(), reactedBy: globalusername, originalAuthor: arrPosts[index].postedBy)
                    
                    CreateReaction(input: input, methodhandler: Dummy)
                let postinput: PostInput = PostInput(primaryKey: arrPosts[index].primaryKey, sortKey: arrPosts[index].sortKey, likes: arrPosts[index].likes, lastEdited: String(Int(Date().timeIntervalSince1970)))
                UpdatePost(input: postinput, methodhandler: Dummy)

            }
            
                    SetFilter()
            
                   }
         
    }
    
    @IBOutlet weak var RefreshBtn: UIButton!
    
    @IBAction func Refresh(_ sender: Any) {
        displayToast("Refreshing")
        isViewingMyProfile = true
        username = currentuser.primaryKey
        LoadPosts()
        SetLabels()
        downloadprofileimage()
        downloadcoverimage()
    }
    
 
    
    func lightboxControllerWillDismiss(_ controller: LightboxController) {
    }
    
    
    func lightboxController(_ controller: LightboxController, didMoveToPage page: Int) {
    }
    
    
    @IBOutlet var headerView: View!
    @IBOutlet weak var tblView: UITableView!
    
    @IBOutlet weak var nameLabel: Label!
    var username: String!
    func SetLabels(){
           nameLabel.text = currentuser.firstName
       }
       
     func downloadprofileimage() {
         let senderimage = username
                               let tempstr: String = senderimage! + "-profile.jpg"
        let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr
                               
                               let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: senderimage! + "/" + tempstr, height: Int(imgBtn.frame.height), width: Int(imgBtn.frame.width))
     
              
                imgBtn.setUserProfileImage(url: myProfileImageURL, profilename: senderimage!)
       

              UIView.animate(withDuration: 1.0, animations: { [weak view] in
                                     self.imgBtn.alpha = 1
                                             })
    
     }
    
        func downloadcoverimage() {
            CoverImage.image = UIImage(named:"cover")
            CoverImage.contentMode = .scaleAspectFill
             let senderimage = username
                                         
           let tempstr: String = senderimage! + "-cover.jpg"
           let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr

            
            
           let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: (senderimage! + "/" + tempstr).escaped(), height: Int(CoverImage.frame.height), width: Int(CoverImage.frame.width))

            
            CoverImage.setCover(url: myCoverImageURL)
         }
    
    @IBOutlet weak var imgBtn: Button!
     @IBOutlet weak var CoverImage: ImageView!
    var currentPosts: [post] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        displaySubViewtoParentView(self.view, subview: DeletePopup)
            DeletePopup.isHidden = true
        isViewingMyProfile = true
        username = currentuser.primaryKey
        LoadPosts()
        SetLabels()
        downloadprofileimage()
        downloadcoverimage()
        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomLegacyTVC", bundle: nil), forCellReuseIdentifier: "CustomLegacyTVC")
        tblView.tableHeaderView = headerView
        tblView.reloadData()
    }
    
    
    
    func LoadPosts(){
          if isViewingMyProfile == true {
            FetchPosts(username: globalusername, methodhandler: SetFilter)
        }
    }
    
    func SetFilter(){
        if isViewingMyProfile == true {
                  currentPosts = arrPosts
            currentPosts = currentPosts.unique()
            currentPosts = currentPosts.sorted {$0.sortKey > $1.sortKey}
            tblView.reloadData()
              }
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        SetFilter()
    }
    
    

    @IBAction func clickToAdd(_ sender: Any) {
        let vc : AddLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "AddLegacyVC") as! AddLegacyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToSearch(_ sender: Any) {
        searchusername = globalusername
        let vc : SearchMyLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "SearchMyLegacyVC") as! SearchMyLegacyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }


}





extension MyLegacyVC : UITableViewDelegate, UITableViewDataSource {
    
      func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
          let cell : CustomLegacyTVC = tblView.dequeueReusableCell(withIdentifier: "CustomLegacyTVC") as! CustomLegacyTVC
         cell.imageView?.sd_cancelCurrentImageLoad()
         cell.imgBtn.sd_cancelCurrentImageLoad()

      }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if currentPosts.count > 0 {
            RefreshBtn.isHidden = true
        } else {
            RefreshBtn.isHidden = false
        }
        
    
        return currentPosts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard indexPath.row < currentPosts.count else {
            return UITableViewCell()
        }
        
        
        if !animateIndexPaths.contains(indexPath) {
            UIView.animate(withDuration: 0.5, animations: {
                       //do your animation
                   }, completion: { (stop:Bool) in
                       self.animateIndexPaths.insert(indexPath)
               })
           }
        
        
        let cell : CustomLegacyTVC = tblView.dequeueReusableCell(withIdentifier: "CustomLegacyTVC") as! CustomLegacyTVC
        let finaldata : post = currentPosts[indexPath.row]
        let username = finaldata.primaryKey.components(separatedBy: "-post").first!
        let key =  username+"/posts/" + finaldata.mediaURL
        
        let url = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: key, height: Int(cell.imgView!.frame.height), width: Int(cell.imgView!.frame.width))
    
        let tempstr: String = username + "-profile.jpg"
                                     
        let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: username + "/" + tempstr, height: Int(cell.imgBtn.frame.height), width: Int(cell.imgBtn.frame.width))
           
        cell.imgBtn.setProfileImage(url: profilePicMainurl, profilename: username)
             
        cell.imgView.setImageFromURL(url: url)
        cell.nameLabel.text = finaldata.postedBy
        cell.timeLabel.text = TimeExtractor(timestamp: finaldata.createdAt)
        cell.likesLbl.setTitle(String(finaldata.likes) + " Likes", for: .normal)
       
        if finaldata.description == "n/a" {
            cell.DescriptionLabel.text = " "
        } else {
           cell.DescriptionLabel.text = finaldata.description
        }
        
        if finaldata.comments == globalusername {
            cell.LikeBtn.setImage(UIImage(named:"chat-like-filled"), for: .normal)
            cell.LikeBtn.imageView?.contentMode = .scaleAspectFit
        } else {
            cell.LikeBtn.setImage(UIImage(named:"chat-like"), for: .normal)
            cell.LikeBtn.imageView?.contentMode = .scaleAspectFit
        }
        
       
        cell.CategoriesLbl.text = finaldata.categories.replacingOccurrences(of: ",", with: " #").lowercased()
        cell.CategoriesLbl.text = "#"+cell.CategoriesLbl.text!
        cell.selectionStyle = .none
        
        cell.delegate = self
        cell.youtuber = finaldata.sortKey
        cell.like = finaldata.sortKey
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        let finaldata : post = currentPosts[indexPath.row]
              let username = finaldata.primaryKey.components(separatedBy: "-post").first!
              let key =  username+"/posts/" + finaldata.mediaURL
              
        let url = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: key, height: Int(self.view.frame.height), width: Int(self.view.frame.width))
        
        if finaldata.postType == "IMAGE"{
            let images = [
              LightboxImage(imageURL: URL(string: API.CLOUDFRONT_URL+"users/"+key)!,
                            text: finaldata.description)
            ]

            // Create an instance of LightboxController.
            let controller = LightboxController(images: images)

            // Set delegates.
            controller.pageDelegate = self
            controller.dismissalDelegate = self

            // Use dynamic background.
            controller.dynamicBackground = true

            // Present your controller.
            present(controller, animated: true, completion: nil)
            
        } else {
            
            
            let images = [
                        LightboxImage(imageURL: URL(string: API.CLOUDFRONT_URL+"users/"+key)!,
                                      text: finaldata.description,
                                      videoURL: URL(string: API.CLOUDFRONT_URL+"users/"+key.replacingOccurrences(of: ".jpg", with: ".mp4")))
                      ]

   // Create an instance of LightboxController.
   let controller = LightboxController(images: images)

   // Set delegates.
   controller.pageDelegate = self
   controller.dismissalDelegate = self

   // Use dynamic background.
   controller.dynamicBackground = true

   // Present your controller.
   present(controller, animated: true, completion: nil)
   
            
        }
        
       

        
        
    }
}

