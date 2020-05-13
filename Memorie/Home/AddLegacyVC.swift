//
//  AddLegacyVC.swift
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
class AddLegacyVC: UIViewController, UIGestureRecognizerDelegate,GalleryControllerDelegate, LightboxControllerDismissalDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return arrYears.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         
     return arrYears[row]
         
     }
     
    var filteryear: String!
    
    @IBAction func hidePickerView(_ sender: Any) {
         pickerContainer.isHidden = true
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         
        filteryear = arrYears[row]
        YearLbl.text = filteryear
        newpost.year = filteryear
         
     }
    
    var newpost: PostInput = PostInput(primaryKey:globalusername+"-post", sortKey: globalusername+Date().SQL(), mediaUrl: "n/a", description: "n/a", categories: "n/a", likes: 0, year: CurrentYear(), searchString: "n/a", postedBy: me[0].firstName, createdAt: String(Int(Date().timeIntervalSince1970)), lastEdited: String(Int(Date().timeIntervalSince1970)), postType: "IMAGE")
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var categoryCV: UICollectionView!
    @IBOutlet weak var descTxtView: TextView!
    @IBOutlet var pickerContainer: UIView!
      
    
    @IBOutlet weak var YearLbl: Label!
    @IBOutlet weak var picker: UIPickerView!
    //MARK:- Button click event
    @IBAction func clickToSelectYear(_ sender: Any) {
    pickerOption = 0
    picker.reloadAllComponents()
    showPickerView()
    }
    
    func showPickerView(){
           pickerContainer.isHidden = false
       }
    
    
      var arrYears : [String] = []
    var arrCategory = ["TRAVEL", "COOKING", "MOVIE", "READING"]
    var arrSelectedCategories: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        YearLbl.text = CurrentYear()
        // Do any additional setup after loading the view.
        categoryCV.register(UINib.init(nibName: "CustomCategoryCVC", bundle: nil), forCellWithReuseIdentifier: "CustomCategoryCVC")
        
        for i in 1965 ... 2030 {
            arrYears.append(String(i))
        }
        
         displaySubViewtoParentView(self.view, subview: pickerContainer)
        pickerContainer.isHidden = true
    }
     var pickerOption: Int = 0
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToAddImage(_ sender: Any) {
        ChooseImage()
    }
    
    @IBAction func clickToNext(_ sender: Any) {
       
        guard imgView.image != nil else {
            displayToast("Please select an image or a video.")
            return
        }
        
        guard newpost.categories != "unknown" else {
            displayToast("Please select a category.")
            return
        }
        
        
        if descTxtView.text.count > 0 {
            newpost.description = descTxtView.text
        }
       
        newpost.categories = arrSelectedCategories.joined(separator: ",")
        newpost.mediaUrl =  self.newpost.createdAt!+".jpg"
        let arr: [String] = [newpost.categories!,newpost.description!,newpost.year!]
        newpost.searchString = arr.joined().lowercased()
        
        AppDelegate().sharedDelegate().showLoader()
        
        let mypost: post = post(primaryKey: newpost.primaryKey!,
                                sortKey: newpost.sortKey!,
                                mediaURL: newpost.mediaUrl!,
                                description: newpost.description!,
                                categories: newpost.categories!,
                                likes: newpost.likes!,
                                year: newpost.year!,
                                searchString: newpost.searchString!,
                                postedBy: newpost.postedBy!,
                                createdAt: newpost.createdAt!,
                                lastEdited: newpost.lastEdited!,
                                postType: newpost.postType!)
        
        arrPosts.append(mypost)
        
        UpdatePost(input: newpost, methodhandler: GoBack)
    }
    
    
    func GoBack(){
        self.navigationController?.popViewController(animated: true)

       AppDelegate().sharedDelegate().removeLoader()
    }
    
    func lightboxControllerWillDismiss(_ controller: LightboxController) {
               
           }
           
           
           func galleryController(_ controller: GalleryController, didSelectImages images: [Image]) {
               
            newpost.postType = "IMAGE"
               images.last?.resolve(completion: { (image) in
                   var myimgs:[UIImage] = []
                   myimgs.append(image!)
                   
             
                self.imgView.image = image!
                  
                self.arr[3] = self.newpost.createdAt!
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
            
            
           
            self.newpost.postType = "VIDEO"
            
             
             self.arr[3] = self.newpost.createdAt!
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

    
    
    
    var arr: [String] = ["users/",globalusername,"/posts/"," ",".jpg"]
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddLegacyVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size.height
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CustomCategoryCVC = categoryCV.dequeueReusableCell(withReuseIdentifier: "CustomCategoryCVC", for: indexPath) as! CustomCategoryCVC
          let finaldata = arrCategory[indexPath.row]
        
        cell.titleLbl.text = arrCategory[indexPath.row]
        
              if arrSelectedCategories.contains(finaldata) {
                 cell.outerView.backgroundColor = PinkColor
              } else {
                cell.outerView.backgroundColor = LightBlueColor
        }
        
   
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let finaldata = arrCategory[indexPath.row]
        
        if arrSelectedCategories.contains(finaldata) {
            
            if let index = arrSelectedCategories.index(where: { $0 == finaldata}) {
                arrSelectedCategories.remove(at: index)
                 categoryCV.reloadData()
                     }
            
            
        } else {
             arrSelectedCategories.append(finaldata)
              categoryCV.reloadData()
        }
       
        
      
    }
}


func CurrentYear() -> String{
    var Year: String = "2020"
    let date = Date()
    let calender = Calendar.current
    let components = calender.dateComponents([.year,.month,.day,.hour,.minute,.second], from: date)
    
    if let year = components.year{
         Year = String(year)
        return Year
    }
    return Year
}
