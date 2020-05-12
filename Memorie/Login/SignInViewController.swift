
//
// Copyright 2014-2018 Amazon.com,
// Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Amazon Software License (the "License").
// You may not use this file except in compliance with the
// License. A copy of the License is located at
//
//     http://aws.amazon.com/asl/
//
// or in the "license" file accompanying this file. This file is
// distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, express or implied. See the License
// for the specific language governing permissions and
// limitations under the License.
//

import Foundation
import AWSCognitoIdentityProvider
import AWSAppSync

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    //Reference AppSync Client
        
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signin: Button!
    
    var passwordAuthenticationCompletion: AWSTaskCompletionSource<AWSCognitoIdentityPasswordAuthenticationDetails>?
    var usernameText: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.password.text = nil
        self.username.text = usernameText
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    
    
    //Fetch Global User Data
    

    
    
       @IBAction func signInPressed(_ sender: AnyObject) {
        
        guard self.username.text?.isEmpty == false && self.password.text?.isEmpty == false else{
            displayToast("Please enter a valid user name and password")
            return
            
        }
        
        let authDetails = AWSCognitoIdentityPasswordAuthenticationDetails(username: self.username.text!, password: self.password.text! )

        self.passwordAuthenticationCompletion?.set(result: authDetails)
        
       
    }
    
    
    
    @IBOutlet weak var BentoImage: UIImageView!
    var CenterPoint: CGPoint!
    
    @IBOutlet weak var SignUpBtn: UIButton!
    @IBOutlet weak var ForgotPassword: UIButton!
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
   
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        guard globalusername != "user" else{
         username.text = ""
            return
        }
        username.text = globalusername
        
       // self.username.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        self.hideKeyboard()
        self.username.delegate = self
         self.password.delegate = self
        //init toolbar
        let toolbar:UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 30))
        
        //create left side empty space so that done button set on right side
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        var done: String = "Done"
        let doneBtn: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction))
        toolbar.setItems([flexSpace, doneBtn], animated: false)
        toolbar.sizeToFit()
        
        //setting toolbar as inputAccessoryView
        self.username.inputAccessoryView = toolbar
        self.password.inputAccessoryView = toolbar
    
        
        
        self.navigationController?.setToolbarHidden(true, animated: true)
        
     
    }
    
    @objc func doneButtonAction() {
        self.view.endEditing(true)
    }
    
    
}

extension SignInViewController: AWSCognitoIdentityPasswordAuthentication {
    
    public func getDetails(_ authenticationInput: AWSCognitoIdentityPasswordAuthenticationInput, passwordAuthenticationCompletionSource: AWSTaskCompletionSource<AWSCognitoIdentityPasswordAuthenticationDetails>) {
        self.passwordAuthenticationCompletion = passwordAuthenticationCompletionSource
        DispatchQueue.main.async {
            if (self.usernameText == nil) {
                self.usernameText = authenticationInput.lastKnownUsername
            }
        }
    }
    
    func Dummy(){
        
    }
    
    public func didCompleteStepWithError(_ error: Error?) {
        DispatchQueue.main.async {
            if let error = error as NSError? {
                let alertController = UIAlertController(title: error.userInfo["__type"] as? String,
                                                        message: error.userInfo["message"] as? String,
                                                        preferredStyle: .alert)
                let retryAction = UIAlertAction(title: "Retry", style: .default, handler: nil)
                alertController.addAction(retryAction)
                
                self.present(alertController, animated: true, completion:  nil)
            } else {
                globalusername = self.username.text!
                print(globalusername!)
                DispatchQueue.main.async(execute: {
           
                    
                })
       
                self.username.text = nil
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
