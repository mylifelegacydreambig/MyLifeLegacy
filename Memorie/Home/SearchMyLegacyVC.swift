//
//  SearchMyLegacyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit
import DropDown
import Gallery
import SVProgressHUD
import Lightbox

var searchusername: String!

class SearchMyLegacyVC: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate, LightboxControllerPageDelegate, LightboxControllerDismissalDelegate, CustomLegacyCellDelegate {
    
    var sortKey: String!
    var username: String!
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
           
           if let index = arrSearchUserPosts.index(where: { $0.sortKey == sortKey}) {
                     
                     let finaldata: post = arrSearchUserPosts[index]
                                 DispatchQueue.main.async{
                                                 
                                     arrSearchUserPosts.remove(at: index)
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
           
        
           if let index = arrSearchUserPosts.index(where: { $0.sortKey == like}) {

               
               if arrSearchUserPosts[index].comments == globalusername {
                   arrSearchUserPosts[index].comments = "n/a"
                   let like: Int =  arrSearchUserPosts[index].likes - 1
                   if like < 0 {
                         arrSearchUserPosts[index].likes = 0
                   } else {
                       arrSearchUserPosts[index].likes = like
                   }
                   
                   
                       let input: ReactionInput = ReactionInput(eventId: arrSearchUserPosts[index].sortKey, commentId: globalusername)
                   
                   let postinput: PostInput = PostInput(primaryKey: arrSearchUserPosts[index].primaryKey, sortKey: arrSearchUserPosts[index].sortKey, likes: arrSearchUserPosts[index].likes)
                   
                       UpdatePost(input: postinput, methodhandler: Dummy)
                       DeleteReaction(input: input, methodhandler: Dummy)
               } else {
                   arrSearchUserPosts[index].comments = globalusername
                   arrSearchUserPosts[index].likes = arrSearchUserPosts[index].likes + 1
                   
                       let input: ReactionInput = ReactionInput(eventId: arrSearchUserPosts[index].sortKey, commentId: globalusername, content: "LIKE", createdAt: Date().SQL(), reactionType: "LIKE", lastEdited: Date().SQL(), reactedBy: globalusername, originalAuthor: arrSearchUserPosts[index].postedBy)
                       
                       CreateReaction(input: input, methodhandler: Dummy)
                   let postinput: PostInput = PostInput(primaryKey: arrSearchUserPosts[index].primaryKey, sortKey: arrSearchUserPosts[index].sortKey, likes: arrSearchUserPosts[index].likes, lastEdited: String(Int(Date().timeIntervalSince1970)))
                   UpdatePost(input: postinput, methodhandler: Dummy)

               }
               
                       SetFilter()
               
                      }
            
       }
       

       
    
    
    func lightboxControllerWillDismiss(_ controller: LightboxController) {
     }
     
     
     func lightboxController(_ controller: LightboxController, didMoveToPage page: Int) {
     }
    
    @IBOutlet weak var SearchResultsLbl: Label!
    var currentPosts: [post] = []
    
    func textFieldDidEndEditing(_ textField: UITextField) {

    }
    
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                let searchText = textField.text! + string.trimmed
                
                if searchText.count > 0 {
                    print("SENSING")
                    SearchPosts(username: username, searchString: searchTxt.text!.lowercased().removeExcessiveSpaces, methodhandler: SetFilter)
                    tblView.reloadData()
                }
                else {
                       currentPosts.removeAll()
                          SearchResultsLbl.text = "No Results".localized()
                    
            }
                return true
            }
    
    
    
    
    @IBOutlet weak var searchTxt: TextField!
    
    @IBOutlet weak var SortBtn: Button!
    
    var sortOptions: [String] = ["Clear Filters".localized(), "Recent First".localized(), "Oldest First".localized()]
    
    var selectedfilter: String! = "Clear Filters".localized()
    func DropDownSetUp(){
        
        let dropDown = DropDown()
        dropDown.anchorView = SortBtn
               dropDown.dataSource = sortOptions
               dropDown.show()
               dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
                 print("Selected item: \(item) at index: \(index)")
                self.selectedfilter = self.sortOptions[index]
                
                self.SortBtn.setTitle(self.selectedfilter, for: .normal)
                self.sortindex = index
                
                self.SetFilter()
                    dropDown.hide()
               }
    }
    
    



    var filteryear: String! = "Clear Filters"
    var filtercategory: String! = "Clear Filters"
      
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerOption == 0 {
             return arrYears.count
        } else {
             return arrCategory.count
        }
        
       
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerOption == 0 {
                   return arrYears[row]
             } else {
                  return arrCategory[row]
             }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerOption == 0 {
                      filteryear = arrYears[row]
            YearLbl.text = filteryear
            SetFilter()
                  } else {
                     filtercategory = arrCategory[row]
            CategoryLbl.text = filtercategory
            SetFilter()
                  }
        
    }

    @IBAction func hide(_ sender: Any) {
        hidePickerView()
    }
    
    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tblView: UITableView!
    
    var sortindex: Int = 0
    func SortData(){
    
        if sortindex == 1 {
              currentPosts = currentPosts.sorted {$0.sortKey > $1.sortKey}
            tblView.reloadData()
        } else if sortindex == 2 {
              currentPosts = currentPosts.sorted {$0.sortKey < $1.sortKey}
            tblView.reloadData()
        }
        
        
        
    SearchResultsLbl.text = String(currentPosts.count) + " Results".localized()
        
    }
    
    
    func SetFilter(){
            currentPosts = arrSearchUserPosts
            currentPosts = currentPosts.unique()
            currentPosts = currentPosts.sorted {$0.sortKey > $1.sortKey}
            
            if filteryear != "Clear Filters" {
            
            currentPosts = currentPosts.filter {
                          $0.year == filteryear
                      }
            }
            
            if filtercategory != "Clear Filters"{
            currentPosts = currentPosts.filter {
                $0.categories.contains(filtercategory.uppercased())
            }
            }
            
            tblView.reloadData()
              
        
        SortData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        searchTxt.placeholder = "Eg: travel, italy, mother's day"
        username = searchusername
        displaySubViewtoParentView(self.view, subview: DeletePopup)
            DeletePopup.isHidden = true
        searchTxt.delegate = self
     self.picker.dataSource = self
        self.picker.delegate = self
        
        pickerOption = 1
 
        
        
        for i in 1965 ... 2030 {
            arrYears.append(String(i))
        }
        
         displaySubViewtoParentView(self.view, subview: pickerContainer)
        pickerContainer.isHidden = true
        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomLegacyTVC", bundle: nil), forCellReuseIdentifier: "CustomLegacyTVC")
        tblView.tableHeaderView = headerView
        tblView.reloadData()
    }
    @IBOutlet var pickerContainer: UIView!
    
    var arrYears : [String] = []

    var pickerOption: Int = 0
    
    @IBOutlet weak var CategoryLbl: Label!
    @IBOutlet weak var YearLbl: Label!
    @IBOutlet weak var picker: UIPickerView!
    //MARK:- Button click event
    @IBAction func clickToSelectYear(_ sender: Any) {
    pickerOption = 0
    picker.reloadAllComponents()
    showPickerView()
    }
    
    @IBAction func clickToSelectCategory(_ sender: Any) {
    pickerOption = 1
    picker.reloadAllComponents()
    showPickerView()
    }
    
    func showPickerView(){
        pickerContainer.isHidden = false
    }
    
    func hidePickerView(){
          pickerContainer.isHidden = true
      }
      
    
    @IBAction func clickToSortBy(_ sender: Any) {
        DropDownSetUp()
    }
    
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension SearchMyLegacyVC : UITableViewDelegate, UITableViewDataSource {
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
            
        if finaldata.primaryKey == globalusername+"-post"{
            cell.MoreBtn.isHidden = false
            cell.LikeBtnTrailingConstraint.constant = -40
        } else {
            cell.MoreBtn.isHidden = true
            cell.LikeBtnTrailingConstraint.constant = 0
        }
        
          return cell
      }
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
         let cell : CustomLegacyTVC = tblView.dequeueReusableCell(withIdentifier: "CustomLegacyTVC") as! CustomLegacyTVC
        cell.imageView?.sd_cancelCurrentImageLoad()
        cell.imgBtn.sd_cancelCurrentImageLoad()

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
                    controller.modalPresentationStyle = .fullScreen

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
                    controller.modalPresentationStyle = .fullScreen

             // Present your controller.
             present(controller, animated: true, completion: nil)
             
                      
                  }
      }
}
