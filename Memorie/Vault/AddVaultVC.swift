//
//  AddVaultVC.swift
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

var selectedfriend: String! = "n/a"
class AddVaultVC: UIViewController, UIGestureRecognizerDelegate,GalleryControllerDelegate, LightboxControllerDismissalDelegate {
    @IBAction func SelectFriends(_ sender: Any) {
        AppDelegate().sharedDelegate().removeLoader()
           let vc : ChooseFriendsVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "ChooseFriendsVC") as! ChooseFriendsVC
                self.navigationController?.pushViewController(vc, animated: true)
                
    }
    
        @IBOutlet weak var descTxtView: TextView!
    
    var newvaultmessage: MessageVaultInput = MessageVaultInput(primaryKey: globalusername+"-sent",
                                                               sortKey: globalusername+Date().SQL(),
                                                               mediaUrl: "n/a",
                                                               canBeOpenedOn: String(Int(Date().timeIntervalSince1970)),
                                                               isLocked: false,
                                                               searchString: "n/a",
                                                               postedBy: globalusername,
                                                               receivedBy: "n/a",
                                                               createdAt: String(Int(Date().timeIntervalSince1970)),
                                                               lastEdited: String(Int(Date().timeIntervalSince1970)),
                                                               postType: "IMAGE", description: "n/a")
    
  
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var DateView: UIView!
    @IBOutlet weak var YearLbl: Label!

    //MARK:- Button click event
    @IBAction func clickToSelectYear(_ sender: Any) {
    
        showPickerView()
    }
    
    func showPickerView(){
        datePicker.minimumDate = Date()
        DateView.isHidden = false
    
    }

    override func viewDidAppear(_ animated: Bool) {
        SetLabels()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      selectedfriend = "n/a"
      displaySubViewtoParentView(self.view, subview: DateView)
      DateView.isHidden = true
        SetLabels()
        
    }
    
    
    func SetLabels(){
        if selectedfriend == "n/a" {
            RecipientLbl.text = "Select A Recipient"
        } else {
            RecipientLbl.text = selectedfriend
            newvaultmessage.receivedBy = selectedfriend
        }
    }

    //MARK:- Button click event
    @IBOutlet weak var RecipientLbl: Label!
    
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToAddImage(_ sender: Any) {
        ChooseImage()
    }
    
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    

     @IBAction func DatePickerChanged(_ sender: Any) {
         
         let date = datePicker.date
        newvaultmessage.canBeOpenedOn = String(Int(datePicker.date.timeIntervalSince1970))
      
        YearLbl.text = TimeExtractorForChat(timestamp: newvaultmessage.canBeOpenedOn!)
        
        
     }
    
    @IBAction func hideDateView(_ sender: Any) {
         DateView.isHidden = true
        
        
    }
    
    
    @IBAction func clickToNext(_ sender: Any) {
       
        guard imgView.image != nil else {
            displayToast("Please select an image or a video.")
            return
        }
        
        guard newvaultmessage.receivedBy != "n/a" else {
            displayToast("Please select a recipient.")
            return
        }
        if descTxtView.text.count > 0 {
               newvaultmessage.description = descTxtView.text
           }
       
        newvaultmessage.receivedBy = RecipientLbl.text
        newvaultmessage.mediaUrl =  self.newvaultmessage.createdAt!+".jpg"
        let arr: [String] = [newvaultmessage.receivedBy!,newvaultmessage.description!,newvaultmessage.postedBy!]
        newvaultmessage.searchString = arr.joined().lowercased()
        
        AppDelegate().sharedDelegate().showLoader()
        
        let mymessagevault: messagevault = messagevault(primaryKey: newvaultmessage.primaryKey!,
                                                        sortKey: newvaultmessage.sortKey!,
                                                        mediaURL: newvaultmessage.mediaUrl!,
                                                        canBeOpenedOn: newvaultmessage.canBeOpenedOn!,
                                                        isLocked: newvaultmessage.isLocked!,
                                                        searchString: newvaultmessage.searchString!,
                                                        postedBy: newvaultmessage.postedBy!,
                                                        receivedBy: newvaultmessage.receivedBy!,
                                                        createdAt: newvaultmessage.createdAt!,
                                                        lastEdited: newvaultmessage.lastEdited!,
                                                        postType: newvaultmessage.postType!,
                                                        description: newvaultmessage.description!)
        
        arrSearchMessageVaults.append(mymessagevault)
        arrMessageVaults.append(mymessagevault)
        
        DispatchQueue.main.async{
            UpdateMessageVault(input: self.newvaultmessage, methodhandler: Dummy)
            var receivermessagevaultinput: MessageVaultInput = self.newvaultmessage
            receivermessagevaultinput.primaryKey = self.newvaultmessage.receivedBy! + "-received"
            UpdateMessageVault(input: receivermessagevaultinput, methodhandler: self.GoBack)
        }
      
    }
    
    
    func GoBack(){
        self.navigationController?.popViewController(animated: true)

       AppDelegate().sharedDelegate().removeLoader()
    }
    
    func lightboxControllerWillDismiss(_ controller: LightboxController) {
               
           }
           
           
           func galleryController(_ controller: GalleryController, didSelectImages images: [Image]) {
               
            newvaultmessage.postType = "IMAGE"
               images.last?.resolve(completion: { (image) in
                   var myimgs:[UIImage] = []
                   myimgs.append(image!)
                   
             
                self.imgView.image = image!
                  
                self.arr[3] = self.newvaultmessage.createdAt!
                self.arr[4] = ".jpg"
                let key: String = self.arr.joined()
                ImageS3(key: key, data: image!.jpegData(compressionQuality: 0.3)!)
                 
               })
               
               controller.dismiss(animated: true, completion: nil)
               gallery = nil
           }
           

 
    
    func compressVideo(inputURL: URL, outputURL: URL, handler:@escaping (_ exportSession: AVAssetExportSession?)-> Void) {
           let urlAsset = AVURLAsset(url: inputURL, options: nil)
           guard let exportSession = AVAssetExportSession(asset: urlAsset, presetName: AVAssetExportPreset960x540) else {
               handler(nil)
               return
           }
      // AVAssetExportPresetMediumQuality

           exportSession.outputURL = outputURL
           exportSession.outputFileType = AVFileType.mp4 //AVFileTypeQuickTimeMovie (m4v)
           exportSession.shouldOptimizeForNetworkUse = true
           exportSession.exportAsynchronously { () -> Void in
               handler(exportSession)
           }
       }
       
     var UploadURL: URL!
       
    func CompressAndUpload(key: String, fileURL:URL){
           // Put in fileURL the URL of the original .mov video
           let compressedURL = NSURL.fileURL(withPath: NSTemporaryDirectory() + NSUUID().uuidString + ".mp4")
           var compressedFileData : Data? =  nil

           // Encode to mp4
           compressVideo(inputURL: fileURL, outputURL: compressedURL, handler: { (_ exportSession: AVAssetExportSession?) -> Void in

               switch exportSession!.status {
                   case .completed:

                   print("Video compressed successfully")
                   do {
                    
                    let data = try Data(contentsOf:exportSession!.outputURL!,options: [.alwaysMapped , .uncached ] )
                    
                      VideoS3(key: key, data: data)
                    
                     self.UploadURL = exportSession!.outputURL!
                       // Call upload function here using compressedFileData
                   } catch _ {
                       print ("Error converting compressed file to Data")
                   }

                   default:
                       print("Could not compress video")
               }
           } )
       }
     
    func getVideoUrl(item: AVPlayerItem) -> URL? {
        let asset = item.asset
        if asset == nil {
            return nil
        }
        if let urlAsset = asset as? AVURLAsset {
            return urlAsset.url
        }
        return nil
    }
    
    func galleryController(_ controller: GalleryController, didSelectVideo video: Video) {
            controller.dismiss(animated: true, completion: nil)
        
 
        video.fetchPlayerItem { (item) in
            
            guard let tempPath = self.getVideoUrl(item: item!) else {
                 print("Can't find the video. Please try again.")
                return
            }
            
            
           
            self.newvaultmessage.postType = "VIDEO"
            
             
             self.arr[3] = self.newvaultmessage.createdAt!
             self.arr[4] = ".mp4"
             let key: String = self.arr.joined()
             self.CompressAndUpload(key: key, fileURL: tempPath)
            
             do {

             let data = try Data(contentsOf:tempPath, options: [.alwaysMapped , .uncached ] )
                                
             let jpgkey = key.replacingOccurrences(of: ".mp4", with: ".jpg")
                 if let image = (self.videoSnapshot(vidURL: tempPath)) {
                     ImageS3(key: jpgkey, data: image.jpegData(compressionQuality: 0.3)!)
                     self.imgView.image = image

                     }
                            }
                            catch {
                                
                                print("Error in uploading. Please try again.")
                                print(error)
                            }
            
            
            
            
            
        }
            
            
           }
    
    

           func videoSnapshot(vidURL: URL) -> UIImage? {

               let asset = AVURLAsset(url: vidURL)
               let generator = AVAssetImageGenerator(asset: asset)
               generator.appliesPreferredTrackTransform = true

               let timestamp = CMTime(seconds: 1, preferredTimescale: 60)

               do {
                   let imageRef = try generator.copyCGImage(at: timestamp, actualTime: nil)
                   return UIImage(cgImage: imageRef)
               }
               catch let error as NSError
               {
                   print("Image generation failed with error \(error)")
                   return nil
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
            Config.VideoEditor.maximumDuration = 600
            Config.tabsToShow = [.imageTab, .cameraTab, .videoTab]
               present(gallery, animated: true, completion: nil)
           }
           let editor: VideoEditing = VideoEditor()
           var gallery: GalleryController!

    var arr: [String] = ["users/",globalusername,"/vaults/"," ",".jpg"]


}
