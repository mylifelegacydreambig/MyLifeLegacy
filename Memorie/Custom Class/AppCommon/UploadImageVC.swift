//
//  UploadImageVC.swift
//  HearBK
//
//  Created by Amisha on 24/10/18.
//  Copyright © 2018 PC. All rights reserved.
//

import UIKit
import PEPhotoCropEditor


class UploadImageVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, PECropViewControllerDelegate {

    let imgPicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imgPicker.delegate = self

    }

    // MARK: - Upload Image
    /**
     *
     * This function is use for upload image.
     * User can select image from gallery or camera.
     * Using onCaptureImageThroughCamera function user can capture image through camera.
     * Using onCaptureImageThroughGallery function user can select image from gallery.
     * imagePickerController is delegate methode of image picker controller.
     *
     * @param
     */
    func uploadImage()
    {
        let actionSheet: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        let cancelButton = UIAlertAction(title: getTranslate("cancel_button"), style: .cancel) { _ in
            
        }
        actionSheet.addAction(cancelButton)

        let cameraButton = UIAlertAction(title: getTranslate("take_photo"), style: .default)
        { _ in
            self.onCaptureImageThroughCamera()
        }
        actionSheet.addAction(cameraButton)

        let galleryButton = UIAlertAction(title: getTranslate("gallry_photo"), style: .default)
        { _ in
            self.onCaptureImageThroughGallery()
        }
        actionSheet.addAction(galleryButton)

        if UIDevice.current.userInterfaceIdiom == .pad {
            if let popoverController = actionSheet.popoverPresentationController {
                popoverController.sourceView = self.view
                popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
                popoverController.permittedArrowDirections = []

            }
        }

        self.present(actionSheet, animated: true, completion: nil)
    }

    @objc open func onCaptureImageThroughCamera()
    {
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            displayToast("device_no_camera")
        }
        else {
            let imgPicker = UIImagePickerController()
            imgPicker.delegate = self
            imgPicker.allowsEditing = false
            imgPicker.sourceType = .camera
            UIViewController.top?.present(imgPicker, animated: true, completion: {() -> Void in
            })
        }
    }

    @objc open func onCaptureImageThroughGallery()
    {
        self.dismiss(animated: true, completion: nil)
        DispatchQueue.main.async {
            let imgPicker = UIImagePickerController()
            imgPicker.delegate = self
            imgPicker.allowsEditing = false
            imgPicker.sourceType = .photoLibrary
            self.present(imgPicker, animated: true, completion: {() -> Void in
                
            })
        }
    }

    func selectedImage(choosenImage : UIImage) {
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgPicker.dismiss(animated: true, completion: {() -> Void in
        })
        if let choosenImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            let croppedImage1 = compressImage(choosenImage, to: CGSize(width: 800, height: 800))
            selectedImage(choosenImage: croppedImage1)
            self.dismiss(animated: true) {

            }
            /*
            let controller : PECropViewController = PECropViewController()
            controller.delegate = self
            controller.image = choosenImage
            controller.keepingCropAspectRatio = true
            controller.toolbarHidden = true

            let navigationController1 : UINavigationController = UINavigationController.init(rootViewController: controller)
            
            UIApplication.topViewController()?.present(navigationController1, animated: true, completion: {
                
            })
            */
        }
      
    }
  
    func cropViewController(_ controller: PECropViewController!, didFinishCroppingImage croppedImage: UIImage!) {
        let croppedImage1 = compressImage(croppedImage!, to: CGSize(width: 800, height: 800))
        selectedImage(choosenImage: croppedImage1)
        self.dismiss(animated: true) {
            
        }
    }
    func cropViewControllerDidCancel(_ controller: PECropViewController!) {
        self.dismiss(animated: true) {
            
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



