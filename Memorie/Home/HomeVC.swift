//
//  HomeVC.swift
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

var isMyProfile: Bool = true
var isProfileImage: Bool = false
var myProfileImageURL: String!
var myCoverImageURL: String!

class HomeVC: UIViewController, UIGestureRecognizerDelegate,GalleryControllerDelegate, LightboxControllerDismissalDelegate {
    @IBAction func EditProfileTapped(_ sender: Any) {
        editProfile = true
        let vc = STORYBOARD.MAIN.instantiateViewController(withIdentifier: "CreateProfileVC") as! CreateProfileVC
                                                   self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBOutlet weak var nameLabel: Label!
    var username: String!
    
    
    @IBAction func ChooseCoverImage(_ sender: Any) {
        isProfileImage = false
        ChooseImage()
        
    }
    func SetLabels(){
        nameLabel.text = me[0].firstName
    }
    @IBAction func SignOutTapped(_ sender: Any) {
   self.navigationController?.popViewController(animated: true)

    }
    
     func downloadcoverimage() {
         CoverImage.image = UIImage(named:"cover")
         CoverImage.contentMode = .scaleAspectFill
          let senderimage = username
                                      
        let tempstr: String = senderimage! + "-cover.jpg"
        let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr

        let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: (senderimage! + "/" + tempstr).escaped(), height: Int(CoverImage.frame.height), width: Int(CoverImage.frame.width))

        myCoverImageURL = profilePicMainurl
        
         CoverImage.setCover(url: profilePicMainurl)
      }
    
       @IBOutlet weak var imgBtn: Button!
      @IBOutlet weak var CoverImage: ImageView!
    
    func lightboxControllerWillDismiss(_ controller: LightboxController) {
            
        }
        
        
        func galleryController(_ controller: GalleryController, didSelectImages images: [Image]) {
            
            
            images.last?.resolve(completion: { (image) in
                var myimgs:[UIImage] = []
                myimgs.append(image!)
                
               if isProfileImage == true{
                let key: String = "users/"+globalusername+"/"+globalusername+"-profile.jpg"
                ImageS3(key: key, data: image!.jpegData(compressionQuality: 0.3)!)
                
               // self.UploadImageToS3(Username: globalusername, FileName: globalusername+"-profile.jpg", Data: image!.jpegData(compressionQuality: 0.3)!)
            
                self.imgBtn.setBackgroundImage(image, for: .normal)
               } else{
                let key: String = "users/"+globalusername+"/"+globalusername+"-cover.jpg"
                
                //self.UploadImageToS3(Username: globalusername, FileName: globalusername+"-cover.jpg", Data: image!.jpegData(compressionQuality: 0.3)!)

                ImageS3(key: key, data: image!.jpegData(compressionQuality: 0.3)!)
                
                self.CoverImage.image = image!
               }
              
                
                
                
            })
            
            controller.dismiss(animated: true, completion: nil)
            gallery = nil
        }
        
        func UploadImageToS3(Username:String,FileName: String, Data: Data){
              
              
                     let path = API.ROOT_FOLDER+"/users/"+Username
                     
                     apiCallToGetSignedInURL(filename: FileName, path: path, data: Data)
              
          }
        
        func galleryController(_ controller: GalleryController, didSelectVideo video: Video) {
            controller.dismiss(animated: true, completion: nil)
            gallery = nil
            
            
            editor.edit(video: video) { (editedVideo: Video?, tempPath: URL?) in
                DispatchQueue.main.async {
                    if let tempPath = tempPath {
                        let controller = AVPlayerViewController()
                        controller.player = AVPlayer(url: tempPath)
                        controller.modalPresentationStyle = .fullScreen
                        self.present(controller, animated: true, completion: nil)
                    }
                }
            }
        }
        
        func galleryController(_ controller: GalleryController, requestLightbox images: [Image]) {
            LightboxConfig.DeleteButton.enabled = true
            
            SVProgressHUD.show()
            Image.resolve(images: images, completion: { [weak self] resolvedImages in
                SVProgressHUD.dismiss()
                self?.showLightbox(images: resolvedImages.compactMap({ $0 }))
            })
        }
        
        func galleryControllerDidCancel(_ controller: GalleryController) {
            controller.dismiss(animated: true, completion: nil)
            gallery = nil
        }
        
        func showLightbox(images: [UIImage]) {
            guard images.count > 0 else {
                return
            }
            
            let lightboxImages = images.map({ LightboxImage(image: $0) })
            let lightbox = LightboxController(images: lightboxImages, startIndex: 0)
            lightbox.dismissalDelegate = self
            
            gallery.present(lightbox, animated: true, completion: nil)
        }
        
        
        func setImage(){
            
            
            
        }
        
        func ChooseImage(){
        
            gallery = GalleryController()
            gallery.delegate = self
            Config.Camera.imageLimit = 1
            Config.VideoEditor.maximumDuration = 15
            Config.tabsToShow = [.imageTab, .cameraTab]
            present(gallery, animated: true, completion: nil)
        }
        let editor: VideoEditing = VideoEditor()
        var gallery: GalleryController!

    
    @IBAction func imgBtnTapped(_ sender: Any) {
           
           isProfileImage = true
           ChooseImage()
       }
    
    
    
     func downloadprofileimage() {
         let senderimage = username
                               let tempstr: String = senderimage! + "-profile.jpg"
        let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr
                               
                               let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: senderimage! + "/" + tempstr, height: Int(imgBtn.frame.height), width: Int(imgBtn.frame.width))
     
              
                imgBtn.setUserProfileImage(url: profilePicMainurl, profilename: senderimage!)
       
myProfileImageURL = profilePicMainurl
              UIView.animate(withDuration: 1.0, animations: { [weak view] in
                                     self.imgBtn.alpha = 1
                                             })
    
     }

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var constraintHeightTblView: NSLayoutConstraint!
    
    @objc func tapped(){
           
              isProfileImage = false
           ChooseImage()
          }
    
    func addTapGesture()
         {
           let tap: UITapGestureRecognizer = UITapGestureRecognizer(
                       target: self,
                       action: #selector(tapped))
                       CoverImage.addGestureRecognizer(tap)
         }
    
    override func viewDidAppear(_ animated: Bool) {
        SetLabels()
        arrPosts.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        addTapGesture()
        CoverImage.bringSubviewToFront(CoverImage)
        username = globalusername
        SetLabels()
        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomHomeTVC", bundle: nil), forCellReuseIdentifier: "CustomHomeTVC")
        constraintHeightTblView.constant = 80*4
        //constraintHeightTblView.constant = constraintHeightTblView.constant
            
            downloadprofileimage()
            downloadcoverimage()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}

extension HomeVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomHomeTVC = tblView.dequeueReusableCell(withIdentifier: "CustomHomeTVC") as! CustomHomeTVC
        cell.arrowBtn.isHidden = true
        cell.mySwitch.isHidden = true
        cell.vaultBtn.isHidden = true
        if indexPath.row == 0 {
            cell.titleLbl.text = "My Legacy"
            cell.subTitleLbl.text = "Access all your memories here."
            cell.arrowBtn.isHidden = false
        }
        else if indexPath.row == 1 {
            cell.titleLbl.text = "My Friends & Family"
            cell.subTitleLbl.text = "Access the memories of your friends & family."
            cell.arrowBtn.isHidden = false
        }
        else if indexPath.row == 2 {
            cell.titleLbl.text = "My Vault"
            cell.subTitleLbl.text = "Share and access private memories."
            cell.arrowBtn.isHidden = false
            cell.vaultBtn.isHidden = true
        }
        else if indexPath.row == 3 {
            cell.titleLbl.text = "Profile Visibility"
            cell.mySwitch.isHidden = false
        }
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            isViewingMyProfile = true
            currentuser = me[0]
            
            let vc : MyLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "MyLegacyVC") as! MyLegacyVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 1 {
            let vc : MyFriendsFamilyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "MyFriendsFamilyVC") as! MyFriendsFamilyVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 2 {
            let vc : MyVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "MyVaultVC") as! MyVaultVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
