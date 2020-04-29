//
//  LoginVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:- Button click event
    @IBAction func clickToSignIn(_ sender: Any) {
        self.view.endEditing(true)
        AppDelegate().sharedDelegate().navigateToDashboard()
    }
    
    @IBAction func clickToSignUp(_ sender: Any) {
        self.view.endEditing(true)
        let vc : SignupVC = STORYBOARD.MAIN.instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToForgotPassword(_ sender: Any) {
        self.view.endEditing(true)
    }
}

