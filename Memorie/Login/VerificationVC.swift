//
//  VerificationVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class VerificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.view.endEditing(true)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToVerify(_ sender: Any) {
        self.view.endEditing(true)
        let vc : CreateProfileVC = STORYBOARD.MAIN.instantiateViewController(withIdentifier: "CreateProfileVC") as! CreateProfileVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToResendCode(_ sender: Any) {
        self.view.endEditing(true)
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
