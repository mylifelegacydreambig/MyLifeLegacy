//
//  AppDelegate.swift
//  Memorie
//
//  Created by Abhi Chakrabarti on 7/21/18.
//  Copyright © 2018 Bentolingo. All rights reserved.
// V20

import UIKit
import AVKit
import Speech
import AWSCognitoIdentityProvider
import AWSAppSync
import AWSAuthCore
import NVActivityIndicatorView
import UserNotifications
import IQKeyboardManagerSwift
import DropDown
import Alamofire
import MediaPlayer
import StoreKit
import DynamicColor
import AWSS3

let AppColor = DynamicColor(hexString: "ffffff")
var alluilanguages: [String] = ["English", "日本語", "한국어", "简体中文","繁体中文","हिन्दी", "Español (LATAM)", "Française","русский","Italiano","Deutsch"]
var appSyncClient: AWSAppSyncClient?
var mylocale: String = "en"
var signInLocale: String = "en"
var searchresults: String! = "All"
var bgplayer = AVAudioPlayer()
var globalprofileimage: UIImage!
var globalusername: String! = "user"
var currentdevicetoken: String! = "unknown"
var arrFiles : [String] = []

var unavailableLanguages: [String] = ["zh-Hant"]

struct defaultsKeys {
    static let keyOne = "uilanguage"
}


func defineAppSyncSource(){
    
    //Reference AppSync client from App Delegate
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
}


extension String {
func localized() ->String {
    var newlang: String! = "en"
    let path = Bundle.main.path(forResource: "en", ofType: "lproj")
    let bundle = Bundle(path: path!)

    return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
}}



@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
   

     func ImageURL(folder:String,key:String,height:Int,width:Int) -> String{
           
        let key:String = folder.escaped()+"/"+key.escaped()
         var imageparametrs: [String: Any] = [
            "bucket" : API.ROOT_FOLDER,
             "key" : key,
                 "edits": [
                     "resize": [
                    "width": width,
                    "height": height,
                    "fit": "cover"
                    ]
                 ]
         ]
              let data = try! JSONSerialization.data(withJSONObject: imageparametrs)
           let base64Representation = data.base64EncodedString()
           print("#############################")
           print(base64Representation)

           return API.IMAGE_URL+base64Representation
           
       }

   
    var window: UIWindow?
    var signInViewController: SignInViewController?
    var mfaViewController: MFAViewController?
    var navigationController: UINavigationController?
    var storyboard: UIStoryboard?
    var rememberDeviceCompletionSource: AWSTaskCompletionSource<NSNumber>?
    var appSyncClient: AWSAppSyncClient?
    var activityLoader : NVActivityIndicatorView!
    
    
    func sharedDelegate() -> AppDelegate
    {
        return UIApplication.shared.delegate as! AppDelegate
        
    }
 


     func showLoader()
      {
          removeLoader()
          window?.isUserInteractionEnabled = false
          activityLoader = NVActivityIndicatorView(frame: CGRect(x: ((window?.frame.size.width)!-50)/2, y: ((window?.frame.size.height)!-50)/2, width: 50, height: 50))
          activityLoader.type = .ballSpinFadeLoader
          activityLoader.color = AppColor
          window?.addSubview(activityLoader)
          activityLoader.startAnimating()
        
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(3.0 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC),
            execute: {
                self.removeLoader()
        })
      }
      
      /**
       * Hide loader after getting response from server
       *
       * @param
       */
      func removeLoader()
      {
          window?.isUserInteractionEnabled = true
          if activityLoader == nil
          {
              return
          }
          activityLoader.stopAnimating()
          activityLoader.removeFromSuperview()
          activityLoader = nil
      }
    
    

    
    
  #if targetEnvironment(macCatalyst)
    
    override func buildMenu(with builder: UIMenuBuilder) {
        super.buildMenu(with: builder)
        builder.remove(menu: .help)

    
    }
    #endif
    

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        DropDown.startListeningToKeyboard()

        do {
            try AVAudioSession.sharedInstance().setCategory(.ambient, mode: .default)
            print("Playback OK")
            try AVAudioSession.sharedInstance().setActive(true)
            print("Session is Active")
        } catch {
            print(error)
        }
        
        
 
        
        // setup Cognito credentials
        let credentialsProvider = AWSCognitoCredentialsProvider(
                 regionType: CognitoIdentityUserPoolRegion, identityPoolId: CognitoIdentityPoolId)
        
        let defaultServiceConfiguration = AWSServiceConfiguration(
                     region: CognitoIdentityUserPoolRegion, credentialsProvider: credentialsProvider)
                 
        AWSServiceManager.default().defaultServiceConfiguration = defaultServiceConfiguration
        

        
        let databaseURL = URL(fileURLWithPath:NSTemporaryDirectory()).appendingPathComponent(database_name)
        
        do {
        // initialize the appsync configuration
            let appSyncConfig = try AWSAppSyncClientConfiguration(url: AppSyncEndpointURL, serviceRegion: AppSyncRegion , credentialsProvider: credentialsProvider, cacheConfiguration: AWSAppSyncCacheConfiguration())
            
            //(url: AppSyncEndpointURL, serviceRegion: AppSyncRegion, credentialsProvider: credentialsProvider, databaseURL:databaseURL)
            
            
        appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig) // set id as the cache key for objects appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }
        } catch {
        print("APPSYNC Error initializing appsync client. \(error)") }
         
        
        // setup logging
        AWSDDLog.sharedInstance.logLevel = .verbose
        
        // setup service configuration
        let serviceConfiguration = AWSServiceConfiguration(region: CognitoIdentityUserPoolRegion, credentialsProvider: nil)
        
        // create pool configuration
        let poolConfiguration = AWSCognitoIdentityUserPoolConfiguration(clientId: CognitoIdentityUserPoolAppClientId,
                                                                        clientSecret: CognitoIdentityUserPoolAppClientSecret,
                                                                        poolId: CognitoIdentityUserPoolId)
        
        
      
          
            
        
        // initialize user pool client
        AWSCognitoIdentityUserPool.register(with: serviceConfiguration, userPoolConfiguration: poolConfiguration, forKey: AWSCognitoUserPoolsSignInProviderKey)
        
        // fetch the user pool client we initialized in above step
        let pool = AWSCognitoIdentityUserPool(forKey: AWSCognitoUserPoolsSignInProviderKey)
        self.storyboard = UIStoryboard(name: "Main", bundle: nil)
        pool.delegate = self
        
        
        
        
        /// Setup AWS Cognito credentials
     
         
        
        
      
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = .light
        }
                
        
        
        
        IQKeyboardManager.shared.enable = true
        
        return true
    }
    

    
   
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        UIApplication.shared.applicationIconBadgeNumber = 0
          
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:
    }
    
    func application(_ application: UIApplication,
                   handleEventsForBackgroundURLSession identifier: String,
                   completionHandler: @escaping () -> Void) {
    
        //provide the completionHandler to the TransferUtility to support background transfers.
        AWSS3TransferUtility.interceptApplication(application,
            handleEventsForBackgroundURLSession: identifier,
            completionHandler: completionHandler)
    }
    
    // Called when a notification is delivered to a foreground app.
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        print("User Info = ",notification.request.content.userInfo)
        completionHandler([.alert, .badge, .sound])
    }
    
    // Called to let your app know which action was selected by the user for a given notification.
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print("User Info = ",response.notification.request.content.userInfo)
        
        completionHandler()
    }
    
}

// MARK:- AWSCognitoIdentityInteractiveAuthenticationDelegate protocol delegate

extension AppDelegate: AWSCognitoIdentityInteractiveAuthenticationDelegate {
    
    
    func startPasswordAuthentication() -> AWSCognitoIdentityPasswordAuthentication {
        
        let appDelegate: AppDelegate
          if Thread.current.isMainThread {
              appDelegate = UIApplication.shared.delegate as! AppDelegate
            if (self.navigationController == nil) {
                              
                                 self.navigationController = self.storyboard?.instantiateViewController(withIdentifier: "signinController") as? UINavigationController
                self.navigationController!.modalPresentationStyle = .fullScreen
                             }
                             
                             if (self.signInViewController == nil) {
                                 self.signInViewController = self.navigationController?.viewControllers[0] as? SignInViewController
                               // self.navigationController!.modalPresentationStyle = .fullScreen
                             }
                             
                             DispatchQueue.main.async {
                                 self.navigationController!.popToRootViewController(animated: true)
                                 if (!self.navigationController!.isViewLoaded
                                     || self.navigationController!.view.window == nil) {
                                     self.window?.rootViewController?.present(self.navigationController!,
                                                                              animated: true,
                                                                              completion: nil)
                                 }
                                 
                             }
            
          } else {
              appDelegate = DispatchQueue.main.sync {
                
                
                
                if (self.navigationController == nil) {
                    
                       self.navigationController = self.storyboard?.instantiateViewController(withIdentifier: "signinController") as? UINavigationController
                    self.navigationController!.modalPresentationStyle = .fullScreen
                   }
                   
                   if (self.signInViewController == nil) {
                       self.signInViewController = self.navigationController?.viewControllers[0] as? SignInViewController
                   }
                   
                   DispatchQueue.main.async {
                       self.navigationController!.popToRootViewController(animated: true)
                       if (!self.navigationController!.isViewLoaded
                           || self.navigationController!.view.window == nil) {
                           self.window?.rootViewController?.present(self.navigationController!,
                                                                    animated: true,
                                                                    completion: nil)
                       }
                       
                   }
                
                
                  return UIApplication.shared.delegate as! AppDelegate
              }
          }

               return self.signInViewController!
    }
    
    func startMultiFactorAuthentication() -> AWSCognitoIdentityMultiFactorAuthentication {
        if (self.mfaViewController == nil) {
            self.mfaViewController = MFAViewController()
            self.mfaViewController?.modalPresentationStyle = .popover
        }
        DispatchQueue.main.async {
            if (!self.mfaViewController!.isViewLoaded
                || self.mfaViewController!.view.window == nil) {
                //display mfa as popover on current view controller
                let viewController = self.window?.rootViewController!
                viewController?.present(self.mfaViewController!,
                                        animated: true,
                                        completion: nil)
                
                // configure popover vc
                let presentationController = self.mfaViewController!.popoverPresentationController
                presentationController?.permittedArrowDirections = UIPopoverArrowDirection.left
                presentationController?.sourceView = viewController!.view
                presentationController?.sourceRect = viewController!.view.bounds
            }
        }
        return self.mfaViewController!
    }
    
    func startRememberDevice() -> AWSCognitoIdentityRememberDevice {
        return self
    }
}

// MARK:- AWSCognitoIdentityRememberDevice protocol delegate

extension AppDelegate: AWSCognitoIdentityRememberDevice {
    
    func getRememberDevice(_ rememberDeviceCompletionSource: AWSTaskCompletionSource<NSNumber>) {
        self.rememberDeviceCompletionSource = rememberDeviceCompletionSource
        DispatchQueue.main.async {
            // dismiss the view controller being present before asking to remember device
            self.window?.rootViewController!.presentedViewController?.dismiss(animated: true, completion: nil)
            let alertController = UIAlertController(title: "Remember Device",
                                                    message: "Do you want to remember this device?.",
                                                    preferredStyle: .actionSheet)
            
            let yesAction = UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                self.rememberDeviceCompletionSource?.set(result: true)
            })
            let noAction = UIAlertAction(title: "No", style: .default, handler: { (action) in
                self.rememberDeviceCompletionSource?.set(result: false)
            })
            alertController.addAction(yesAction)
            alertController.addAction(noAction)
            
            self.window?.rootViewController?.present(alertController, animated: true, completion: nil)
        }
    }
    
    func didCompleteStepWithError(_ error: Error?) {
        DispatchQueue.main.async {
            if let error = error as NSError? {
                let alertController = UIAlertController(title: error.userInfo["__type"] as? String,
                                                        message: error.userInfo["message"] as? String,
                                                        preferredStyle: .alert)
                let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                alertController.addAction(okAction)
                DispatchQueue.main.async {
                    self.window?.rootViewController?.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}



//Segue - Transition Left To Right
class SegueFromLeft: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: -src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}




//Segue - Transition Right To Left
class SegueFromRight: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}

extension Date {
    func toMillis() -> Int64! {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
}


//Segue - Transition Right To Left
class SegueFromRightWithDelay: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        sleep(0)
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}



extension AppDelegate: AWSCognitoUserPoolsAuthProvider {
  func getLatestAuthToken() -> String {
   let pool = AWSCognitoIdentityUserPool(forKey: "UserPool")
   let session =  pool.currentUser()?.getSession()
   return (session?.result?.idToken?.tokenString)!
  }
    
    
    
}


extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    var releaseVersionNumberPretty: String {
        return "v\(releaseVersionNumber ?? "1.0.0")"
    }
}
