//
//  SentVaultVC.swift
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

protocol YoutuberTableViewCellDelegate: AnyObject {
    func youtuberTableViewCell(_ youtuberTableViewCell: CustomVideoCVC, subscribeButtonTappedFor youtuber: String)
}






class SentVaultVC: UIViewController, UITextFieldDelegate,LightboxControllerPageDelegate, LightboxControllerDismissalDelegate, YoutuberTableViewCellDelegate {
    
    var currentmessagevault: messagevault!
    var sortKey: String!
      func youtuberTableViewCell(_ youtuberTableViewCell: CustomVideoCVC, subscribeButtonTappedFor youtuber: String) {
    
        DeletePopup.isHidden = false
        sortKey = youtuber

        
        
        
        
        
      }
    
    
    func Delete(){

         if let index = arrMessages.index(where: { $0.sortKey == sortKey}) {
               let finaldata: messagevault = arrMessages[index]
            DispatchQueue.main.async{
              
                let inputA: DeleteUserInput = DeleteUserInput(primaryKey: finaldata.postedBy+"-sent", sortKey: finaldata.sortKey)
                
                let inputB: DeleteUserInput = DeleteUserInput(primaryKey: finaldata.receivedBy+"-received", sortKey: finaldata.sortKey)
                
                
                DeleteMessageVault(input: inputA, methodhandler: Dummy)
                
                DeleteMessageVault(input: inputB, methodhandler: Dummy)
                            
                
            }
            
            
        arrMessages.remove(at: index)
            
            
             }
        if let index = arrMessageVaults.index(where: { $0.sortKey == sortKey}) {
              arrMessageVaults.remove(at: index)
                   }
         
         if let index = arrSearchMessageVaults.index(where: { $0.sortKey == sortKey}) {
               arrSearchMessageVaults.remove(at: index)
                    }
        DeletePopup.isHidden = true

        vaultCV.reloadData()
    }
    
func lightboxControllerWillDismiss(_ controller: LightboxController) {
}

    @IBAction func HideDeleteView(_ sender: Any) {
        DeletePopup.isHidden = true
    }
    
func lightboxController(_ controller: LightboxController, didMoveToPage page: Int) {
}

    @IBOutlet weak var vaultCV: UICollectionView!
    var username: String!
    
    override func viewDidAppear(_ animated: Bool) {
        vaultCV.reloadData()
    }
    
    @IBOutlet var DeletePopup: DeletePopupView!
    override func viewDidLoad() {
        super.viewDidLoad()
        displaySubViewtoParentView(self.view, subview: DeletePopup)
              DeletePopup.isHidden = true
        self.hideKeyboard()
        username = globalusername
        searchTxtField.delegate = self
        // Do any additional setup after loading the view.
        vaultCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        
        FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)

    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let searchText = textField.text! + string.trimmed
            
            if searchText.count > 3 {
                
                SearchMessageVaults(username: username, searchstring: searchText, methodhandler: SetDataForSentMessages)
//               arrMessages = arrMessageVaults.filter {
//               $0.searchString.lowercased().contains(searchText.lowercased())
//               }
//               vaultCV.reloadData()
            }
            else {
                   FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)
            }
            return true
        }
    
    @IBAction func DeleteTapped(_ sender: Any) {
        Delete()
        
    }
    
    @IBOutlet weak var DeleteView: View!
    var arrMessages: [messagevault] = []
    
    @IBOutlet weak var searchTxtField: TextField!
    func SetDataForSentMessages(){
        
        if searchTxtField.text!.count > 0 {
            
         arrMessages = arrSearchMessageVaults
            arrMessages = arrMessages.unique()
                vaultCV.reloadData()
        } else {
        
         arrMessages = arrMessageVaults
            arrMessages = arrMessages.unique()
         vaultCV.reloadData()
            
        }
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

extension SentVaultVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMessages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CustomVideoCVC = vaultCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
        
        let finaldata: messagevault = arrMessages[indexPath.row]
        cell.playBtn.isHidden = true
        cell.delegate = self
        cell.youtuber = finaldata.sortKey
        let username = finaldata.postedBy
        let key =  username+"/vaults/" + finaldata.mediaURL
        let url = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: key, height: Int(cell.ImgView!.frame.height), width: Int(cell.ImgView!.frame.width))
      
       cell.ImgView.setImageFromURL(url: url)
        cell.vaultView.isHidden = true
        if Int(finaldata.canBeOpenedOn)! > Int(Date().timeIntervalSince1970) {
                     cell.vaultView.isHidden = false
                cell.AccessLabel.text = "Can be accessed by user on " + TimeExtractorForChat(timestamp: finaldata.canBeOpenedOn)
                } else {
                     cell.playBtn.isHidden = false
                }
                
         cell.nameLbl.text = finaldata.receivername
        cell.moreBtn.tag = indexPath.row
        cell.moreBtn.addTarget(self, action: #selector(clickToVaultMore(_:)), for: .touchUpInside)
        
        if indexPath.row == arrMessages.count {
            
            if searchTxtField.text!.count > 3 {

                    if  let a = Token_arrSearchMessageVaults {
                        SearchMessageVaults(username: username, searchstring: searchTxtField.text!, methodhandler: SetDataForSentMessages)
                    }
                
                
            } else {

                    if  let a = Token_arrMessageVaults {
                            FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)
                    }
                
                
                
                
            }
            
            
            
            
            
            
            
                                     }
        
        
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("TAPPING")
           let finaldata : messagevault = arrMessages[indexPath.row]
           let username = finaldata.postedBy
            let key =  username+"/vaults/" + finaldata.mediaURL
        
        print(API.CLOUDFRONT_URL+"users/"+key)
        
           if finaldata.postType == "IMAGE"{
               let images = [
                 LightboxImage(imageURL: URL(string: API.CLOUDFRONT_URL+"users/"+key)!,
                                text: "For " + finaldata.receivername + " | " + finaldata.description)
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
                                          text: "For " + finaldata.receivername + " | " + finaldata.description,
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
    
    @IBAction func clickToVaultMore(_ sender: UIButton) {
//        let view : DeletePopupView = DeletePopupView().loadNib() as! DeletePopupView
//        view.frame = self.view.frame
//        self.view.addSubview(view)
    }
    
    @IBAction func clickToCreateEvent(_ sender: Any) {
        directsend = false
        let vc : AddVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AddVaultVC") as! AddVaultVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

}






class ReceivedVaultVC: UIViewController, UITextFieldDelegate,LightboxControllerPageDelegate, LightboxControllerDismissalDelegate, YoutuberTableViewCellDelegate {
    
    var currentmessagevault: messagevault!
    var sortKey: String!
      func youtuberTableViewCell(_ youtuberTableViewCell: CustomVideoCVC, subscribeButtonTappedFor youtuber: String) {
    
        DeletePopup.isHidden = false
        sortKey = youtuber

        
        
        
        
        
      }
    
    
    func Delete(){

         if let index = arrMessages.index(where: { $0.sortKey == sortKey}) {
               let finaldata: messagevault = arrMessages[index]
            DispatchQueue.main.async{
              
                let inputA: DeleteUserInput = DeleteUserInput(primaryKey: finaldata.postedBy+"-sent", sortKey: finaldata.sortKey)
                
                let inputB: DeleteUserInput = DeleteUserInput(primaryKey: finaldata.receivedBy+"-received", sortKey: finaldata.sortKey)
                
                
                DeleteMessageVault(input: inputA, methodhandler: Dummy)
                
                DeleteMessageVault(input: inputB, methodhandler: Dummy)
                            
                
            }
            
            
        arrMessages.remove(at: index)
            
            
             }
        if let index = arrReceivedMessageVaults.index(where: { $0.sortKey == sortKey}) {
              arrReceivedMessageVaults.remove(at: index)
                   }
         
         if let index = arrSearchReceivedMessageVaults.index(where: { $0.sortKey == sortKey}) {
               arrSearchReceivedMessageVaults.remove(at: index)
                    }
        DeletePopup.isHidden = true

        vaultCV.reloadData()
    }
    
func lightboxControllerWillDismiss(_ controller: LightboxController) {
}

    @IBAction func HideDeleteView(_ sender: Any) {
        DeletePopup.isHidden = true
    }
    
func lightboxController(_ controller: LightboxController, didMoveToPage page: Int) {
}

    @IBOutlet weak var vaultCV: UICollectionView!
    var username: String!
    
    override func viewDidAppear(_ animated: Bool) {
        vaultCV.reloadData()
    }
    
    @IBOutlet var DeletePopup: DeletePopupView!
    override func viewDidLoad() {
        super.viewDidLoad()
        displaySubViewtoParentView(self.view, subview: DeletePopup)
              DeletePopup.isHidden = true
        self.hideKeyboard()
        username = globalusername
        searchTxtField.delegate = self
        // Do any additional setup after loading the view.
        vaultCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        
        FetchReceivedMessageVaults(username: username, methodhandler: SetDataForSentMessages)

    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let searchText = textField.text! + string.trimmed
            
            if searchText.count > 3 {
                
                SearchReceivedMessageVaults(username: username, searchstring: searchText, methodhandler: SetDataForSentMessages)
//               arrMessages = arrReceivedMessageVaults.filter {
//               $0.searchString.lowercased().contains(searchText.lowercased())
//               }
//               vaultCV.reloadData()
            }
            else {
                   FetchReceivedMessageVaults(username: username, methodhandler: SetDataForSentMessages)
            }
            return true
        }
    
    @IBAction func DeleteTapped(_ sender: Any) {
        Delete()
        
    }
    
    @IBOutlet weak var DeleteView: View!
    var arrMessages: [messagevault] = []
    
    @IBOutlet weak var searchTxtField: TextField!
    func SetDataForSentMessages(){
        
        if searchTxtField.text!.count > 0 {
            
         arrMessages = arrSearchReceivedMessageVaults
            arrMessages = arrMessages.unique()
                vaultCV.reloadData()
        } else {
        
         arrMessages = arrReceivedMessageVaults
            arrMessages = arrMessages.unique()
         vaultCV.reloadData()
            
        }
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

extension ReceivedVaultVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMessages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CustomVideoCVC = vaultCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
        
        let finaldata: messagevault = arrMessages[indexPath.row]
        cell.playBtn.isHidden = true
        cell.delegate = self
        cell.youtuber = finaldata.sortKey
        let username = finaldata.postedBy
        let key =  username+"/vaults/" + finaldata.mediaURL
        let url = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: key, height: Int(cell.ImgView!.frame.height), width: Int(cell.ImgView!.frame.width))
      
       cell.ImgView.setImageFromURL(url: url)
        cell.vaultView.isHidden = true
        if Int(finaldata.canBeOpenedOn)! > Int(Date().timeIntervalSince1970) {
                     cell.vaultView.isHidden = false
                cell.AccessLabel.text = "Can be accessed by user on " + TimeExtractorForChat(timestamp: finaldata.canBeOpenedOn)
                } else {
                     cell.playBtn.isHidden = false
                }
                
         cell.nameLbl.text = finaldata.receivername
        cell.moreBtn.tag = indexPath.row
        cell.moreBtn.addTarget(self, action: #selector(clickToVaultMore(_:)), for: .touchUpInside)
        
        if indexPath.row == arrMessages.count {
            
            if searchTxtField.text!.count > 3 {

                    if  let a = Token_arrSearchReceivedMessageVaults {
                        SearchReceivedMessageVaults(username: username, searchstring: searchTxtField.text!, methodhandler: SetDataForSentMessages)
                    }
                
                
            } else {

                    if  let a = Token_arrReceivedMessageVaults {
                            FetchReceivedMessageVaults(username: username, methodhandler: SetDataForSentMessages)
                    }
                
                
                
                
            }
            
            
            
            
            
            
            
                                     }
        
        
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("TAPPING")
           let finaldata : messagevault = arrMessages[indexPath.row]
           let username = finaldata.postedBy
            let key =  username+"/vaults/" + finaldata.mediaURL
        
        print(API.CLOUDFRONT_URL+"users/"+key)
        
           if finaldata.postType == "IMAGE"{
               let images = [
                 LightboxImage(imageURL: URL(string: API.CLOUDFRONT_URL+"users/"+key)!,
                                text: "For " + finaldata.receivername + " | " + finaldata.description)
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
                                          text: "For " + finaldata.receivername + " | " + finaldata.description,
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
    
    @IBAction func clickToVaultMore(_ sender: UIButton) {
//        let view : DeletePopupView = DeletePopupView().loadNib() as! DeletePopupView
//        view.frame = self.view.frame
//        self.view.addSubview(view)
    }
    
    @IBAction func clickToCreateEvent(_ sender: Any) {
        directsend = false
        let vc : AddVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AddVaultVC") as! AddVaultVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

}



