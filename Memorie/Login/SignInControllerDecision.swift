//  ProfileStats.swift
//  Bentolingo iOS V2.0
//
//  Created by Abhi Chakrabarti on 8/18/18.
//  Copyright © 2018 Bentolingo. All rights reserved.
//

import Foundation
import UIKit
import AWSCognitoIdentityProvider
import DynamicColor
import AWSAppSync
import NVActivityIndicatorView
import UserNotifications

class SignInControllerDecision: UIViewController {
    var appSyncClient: AWSAppSyncClient?

    @IBOutlet weak var logo: UIImageView!

    func ShowButtons(){
          AppDelegate().sharedDelegate().removeLoader()
        NextButton.isHidden = false
    }
    
    func Refresh(){
          AppDelegate().sharedDelegate().showLoader()
        getusername()
               NextButton.isHidden = true
               NextButton.superview?.bringSubviewToFront(NextButton)
               signout.superview?.bringSubviewToFront(signout)
               GetUser(parentview: self.view, methodhandler: ShowButtons)
    }
    

    override func viewDidAppear(_ animated: Bool) {
          AppDelegate().sharedDelegate().showLoader()
        getusername()
        NextButton.isHidden = true
        NextButton.superview?.bringSubviewToFront(NextButton)
        signout.superview?.bringSubviewToFront(signout)
        GetUser(parentview: self.view, methodhandler: ShowButtons)
    
    }
    

    @IBOutlet weak var NextButton: Button!
    
    
    var response: AWSCognitoIdentityUserGetDetailsResponse?
    var user: AWSCognitoIdentityUser?
    var pool: AWSCognitoIdentityUserPool?
    
    
    
    @IBAction func RefreshTapped(_ sender: Any) {
        Refresh()
    }
    
    
    @IBOutlet weak var signout: UIButton!
    
    @IBAction func signouttappedbutton(_ sender: Any) {
        print ("Sign out")
        self.user?.signOut()
        self.title = nil
        self.response = nil
        
        self.refresh()
        

        
    }
   
    
    func refresh() {
        self.user?.getDetails().continueOnSuccessWith { (task) -> AnyObject? in
            DispatchQueue.main.async(execute: {
                self.response = task.result
                self.title = self.user?.username
                
            })
            return nil
        }
    }
    
    func addActivityAnimation(){

  
        
    }
    
    @IBAction func continuetapped(_ sender: Any) {
        
      
        navigateToDashBoard()
        
        return
    }
    



        func navigateToDashBoard(){
            
            if me[0].email == "nan"{
                let vc = STORYBOARD.MAIN.instantiateViewController(withIdentifier: "CreateProfileVC") as! CreateProfileVC
                                            self.navigationController?.pushViewController(vc, animated: true)
                
            } else {
        let vc = STORYBOARD.HOME.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                                    self.navigationController?.pushViewController(vc, animated: true)
                
            }
            
   
        }
 

    
    override func viewDidLoad() {
       // FetchGlobalUserData()
        super.viewDidLoad()
        self.hideKeyboard()
        
      
        var flagstr: String!
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        self.pool = AWSCognitoIdentityUserPool(forKey: AWSCognitoUserPoolsSignInProviderKey)
        if (self.user == nil) {
            self.user = self.pool?.currentUser()
        }
        
       /// runQuery()
        self.refresh()

    }
    
    
}



