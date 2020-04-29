//
//  AddVaultVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class AddVaultVC: UploadImageVC {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToAddImage(_ sender: Any) {
        uploadImage()
    }
    
    @IBAction func clickToSelectDate(_ sender: Any) {
        
    }
    
    @IBAction func clickToSelectRecipient(_ sender: Any) {
        let vc : AddFriendsVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "AddFriendsVC") as! AddFriendsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func selectedImage(choosenImage: UIImage) {
        imgView.image = choosenImage
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
