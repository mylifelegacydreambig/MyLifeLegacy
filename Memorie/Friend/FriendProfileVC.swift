//
//  FriendProfileVC.swift
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

class FriendProfileVC: UIViewController, LightboxControllerPageDelegate, LightboxControllerDismissalDelegate {

    
    func lightboxControllerWillDismiss(_ controller: LightboxController) {
     }
     
     
     func lightboxController(_ controller: LightboxController, didMoveToPage page: Int) {
     }
    
    
    @IBOutlet weak var newNameLabel: Label!
    @IBOutlet weak var newimgBtn: Button!
    @IBOutlet var headerView: View!
    @IBOutlet weak var tblView: UITableView!
     @IBOutlet var detailView: UIView!
    @IBOutlet weak var nameLabel: Label!
    var username: String!
    func SetLabels(){
           nameLabel.text = friend.firstName
         newNameLabel.text = friend.firstName
       }
           
    @IBAction func clickToMore(_ sender: Any) {
        displaySubViewtoParentView(self.view, subview: detailView)
    }
    
    @IBAction func clickToCloud(_ sender: Any) {
        directsend = true
        selectedfriend = friend.primaryKey
        selectedfriendname = friend.firstName
               let vc : AddVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AddVaultVC") as! AddVaultVC
               self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func BlockFriend(_ sender: Any) {
        
        let senderinvitation: InvitationInput = InvitationInput(primaryKey: globalusername+"-contact", sortKey: friend.sortKey, isBlocked: true, lastEdited: Date().SQL())
        
        let receiverinvitation: InvitationInput = InvitationInput(primaryKey: friend.sortKey+"-contact", sortKey: globalusername, isBlocked: true, lastEdited: Date().SQL())
        
        UpdateInvitation(input: senderinvitation, methodhandler: DisplayMessage)
         UpdateInvitation(input: receiverinvitation, methodhandler: DisplayMessage)
    }
    
    
    func DisplayMessage(){
        
        displayToast("Your connection was removed.")
        detailView.removeFromSuperview()
         self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToDismissDetailView(_ sender: Any) {
        
        
        detailView.removeFromSuperview()
    }
     func downloadprofileimage() {
         let senderimage = username
        let tempstr: String = senderimage! + "-profile.jpg"
        let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr
                               
                               let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: senderimage! + "/" + tempstr, height: Int(imgBtn.frame.height), width: Int(imgBtn.frame.width))
     
              
        let newprofilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: senderimage! + "/" + tempstr, height: Int(newimgBtn.frame.height), width: Int(newimgBtn.frame.width))
           
                    
        
        
        newimgBtn.setUserProfileImage(url: newprofilePicMainurl, profilename: senderimage!)
        
                imgBtn.setUserProfileImage(url: profilePicMainurl, profilename: senderimage!)
       

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

            
            CoverImage.setCover(url: profilePicMainurl)
         }
    
    @IBOutlet weak var imgBtn: Button!
     @IBOutlet weak var CoverImage: ImageView!
    var currentPosts: [post] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        isViewingMyProfile = false
        username = friend.sortKey
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
          if isViewingMyProfile == false {
            FetchPosts(username: username,methodhandler: SetFilter)
        }
    }
    
    func SetFilter(){
        if isViewingMyProfile == false {
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
        let vc : SearchMyLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "SearchMyLegacyVC") as! SearchMyLegacyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }


}





extension FriendProfileVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
         let cell : CustomLegacyTVC = tblView.dequeueReusableCell(withIdentifier: "CustomLegacyTVC") as! CustomLegacyTVC
        cell.imageView?.sd_cancelCurrentImageLoad()
        cell.imgBtn.sd_cancelCurrentImageLoad()

     }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentPosts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard indexPath.row < currentPosts.count else {
            return UITableViewCell()
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
        cell.timeLabel.text = TimeExtractor(timestamp: finaldata.lastEdited)
        cell.likesLbl.setTitle(String(finaldata.likes) + " Likes", for: .normal)
        
        if finaldata.description == "n/a" {
            cell.DescriptionLabel.text = " "
        } else {
           cell.DescriptionLabel.text = finaldata.description
        }
        
        cell.CategoriesLbl.text = finaldata.categories.replacingOccurrences(of: ",", with: " #").lowercased()
        cell.CategoriesLbl.text = "#"+cell.CategoriesLbl.text!
        cell.selectionStyle = .none
        return cell
    }
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
         let finaldata : post = currentPosts[indexPath.row]
               let username = finaldata.primaryKey.components(separatedBy: "-post").first!
               let key =  username+"/posts/" + finaldata.mediaURL
               
         let url = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: key, height: Int(self.view.frame.height), width: Int(self.view.frame.width))
         
         if finaldata.postType == "IMAGE"{
             let images = [
               LightboxImage(imageURL: URL(string: url)!,
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
                         LightboxImage(imageURL: URL(string: url)!,
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
