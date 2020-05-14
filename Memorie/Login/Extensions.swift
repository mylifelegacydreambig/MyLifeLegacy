//
//  Extensions.swift
//  Memorie
//
//  Created by Abhishek Chakrabarti on 5/4/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation
import AWSCognitoIdentityProvider
import AWSAppSync
import DynamicColor

var cameraimage: UIImage!


extension  Int{
    func converttoyesno() -> String{
        if self == 1{
            return "YES"
        } else if self == 0{
            return "NO"
        } else {
            return String(self)
        }
    }
}

extension  String{
    func convertfromyesno() -> Int{
        if self == "YES"{
            return 1
        } else if self == "NO"{
            return 0
        } else {
            return -99
        }
    }
}



func getusername()
{
    
    let serviceConfiguration = AWSServiceConfiguration(region: .USEast1, credentialsProvider: nil)
    let userPoolConfiguration = AWSCognitoIdentityUserPoolConfiguration(clientId: CognitoIdentityUserPoolAppClientId, clientSecret: CognitoIdentityUserPoolAppClientSecret, poolId: CognitoIdentityUserPoolId)
    AWSCognitoIdentityUserPool.register(with: serviceConfiguration, userPoolConfiguration: userPoolConfiguration, forKey: "UserPool")
    let pool = AWSCognitoIdentityUserPool(forKey: "UserPool")
    let credentialsProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: CognitoIdentityPoolId, identityProviderManager:pool)
    
    if let name = pool.currentUser()?.username {
       globalusername = pool.currentUser()?.username
       //globalusername = testusername
    } else {
        globalusername = "user"
    }
    
    print("THE CURRENT USERNAME IS " + globalusername)
    
}

func getWiFiAddress() -> String{
    var address: String! = "Unknown"
    guard let wifiIp = getAddress(for: .wifi) else {
        guard let cellularIp = getAddress(for: .cellular) else
        {
            return address
            
        }
        
        address = getAddress(for: .cellular)
        return address
    }
    address = getAddress(for: .wifi)
    
    return address
}

enum Network: String {
    case wifi = "en0"
    case cellular = "pdp_ip0"
    case ipv4 = "ipv4"
    case ipv6 = "ipv6"
}

func getAddress(for network: Network) -> String? {
    var address: String?
    
    // Get list of all interfaces on the local machine:
    var ifaddr: UnsafeMutablePointer<ifaddrs>?
    guard getifaddrs(&ifaddr) == 0 else { return nil }
    guard let firstAddr = ifaddr else { return nil }
    
    // For each interface ...
    for ifptr in sequence(first: firstAddr, next: { $0.pointee.ifa_next }) {
        let interface = ifptr.pointee
        
        // Check for IPv4 or IPv6 interface:
        let addrFamily = interface.ifa_addr.pointee.sa_family
        if addrFamily == UInt8(AF_INET) || addrFamily == UInt8(AF_INET6) {
            
            // Check interface name:
            let name = String(cString: interface.ifa_name)
            if name == network.rawValue {
                
                // Convert interface address to a human readable string:
                var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                getnameinfo(interface.ifa_addr, socklen_t(interface.ifa_addr.pointee.sa_len),
                            &hostname, socklen_t(hostname.count),
                            nil, socklen_t(0), NI_NUMERICHOST)
                address = String(cString: hostname)
            }
        }
    }
    freeifaddrs(ifaddr)
    
    return address
}




extension UIViewController
{
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}


extension UIImageView{
    func setCover(url: String){
            
        let cover = UIImage(named:"cover")
        self.image = cover
        self.backgroundColor = DynamicColor(hexString: "0059b3")
    self.sd_setImage(with: URL(string: url)) { (image, error, cache, url) in
                
        if let image = image{
            self.image = image
        }
                
            }
            
    }
    
    
    
    func setImageFromURL(url: String){

                                self.backgroundColor = DynamicColor(hexString: "0059b3")
                            self.sd_setImage(with: URL(string: url)) { (image, error, cache, url) in
                                        
                                if let image = image{
                                    self.image = image
                                }
                                        
                                    }
         }
}


extension UIButton{
    
    
    
    func setCoverImage(url: String){
        self.imageView?.contentMode = .scaleAspectFit
        self.backgroundColor = DynamicColor(hexString: "0059b3")
                                                           
                                      
        var coverimage: UIImage = UIImage(named:"cover")!
                 self.sd_setImage(with: URL(string: url), for: .normal) { (image, error, cache, url) in
                             
                             if let error = error{
                                                         self.setImage(coverimage, for: .normal)
                                                     
                                                    } else {
                                                        self.setImage(image, for: .normal)
                                 
                                 
                                                        if image == nil {
                                                              self.setImage(coverimage, for: .normal)
                                                        } else {
                                                         
                                                         //cameraimage = image
                                 }
                                                         
                                 
                                                    }
                             
                         }
                         
                         
                 
             }
    
    
    
    
    func setUserProfileImage(url: String, profilename: String){
            
        cameraimage = UIImage(named:"add")
          self.backgroundColor = DynamicColor(hexString: "0059b3")
    self.sd_setBackgroundImage(with: URL(string: url), for: .normal) { (image, error, cache, url) in
               
        if let image = image{
            self.setBackgroundImage(image, for: .normal)
                        cameraimage = image
                             
        }
                                        
                                       
                
            }
            
            
         
            
    }
    
    
    func setProfileImage(url: String, profilename: String){
        
        
self.sd_setBackgroundImage(with: URL(string: url), for: .normal) { (image, error, cache, url) in
            
            if let error = error{
                                        self.setBackgroundImage(nil, for: .normal)
                                       self.backgroundColor = DynamicColor(hexString: "0059b3")
                                       self.setTitle(profilename.first!.uppercased(), for: .normal)
                                   } else {
                                       self.setBackgroundImage(image, for: .normal)
                                       
                if image == nil {
                                            self.setTitle(profilename.first!.uppercased(), for: .normal)
                                       }
                                   }
            
        }
        
        
     
        
}
    
     func downloadimagefromURL(url: String){

        self.sd_setBackgroundImage(with: URL(string: url), for: .normal) { (image, error, cache, url) in
             if let error = error{
                                               self.setBackgroundImage(nil, for: .normal)
                                               self.backgroundColor = DynamicColor(hexString: "0059b3")
                                           } else {
                                               self.setBackgroundImage(image, for: .normal)
                                           }
            
        }
        
       
        
    }
    
    func downloadimagefromURLMethodHandler(url: String, OnSuccess: @escaping MethodHandler, OnError: @escaping MethodHandler){

        self.sd_setBackgroundImage(with: URL(string: url), for: .normal) { (image, error, cache, url) in
                if let error = error{
                                                     self.setBackgroundImage(nil, for: .normal)
             self.backgroundColor = DynamicColor(hexString: "0059b3")
                                                    OnError()
                                                 } else {
                                                     self.setBackgroundImage(image, for: .normal)
                                                        OnSuccess()
                                                 }
            
        }
        
        
        
            }
    
    
}


extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
func TimeExtractorForChat(timestamp: String) -> String{
    let date = Date(timeIntervalSince1970: Double(Int(timestamp)!))
          
       let dateFormatter = DateFormatter()
       dateFormatter.dateStyle = DateFormatter.Style.short
       //dateFormatter.timeStyle = DateFormatter.Style.short
       let localDate = dateFormatter.string(from: date)
    return localDate
    
}




func TimeExtractor(timestamp: String) -> String{
    
    guard timestamp.isInt == true else {
        return "unknown"
    }
    
    
    var timestring: Int = Int(timestamp)!
    var time: String!
    let date = Date()
    let timenow = Int(date.timeIntervalSince1970)
    let dtime = timenow - timestring


    let HOUR: Int = 3600
    let MIN: Int = 60
    let DAY: Int = HOUR*24
    let WEEK: Int = DAY*7
    
    if dtime < 0 {
        time = "unknown".localized()
        
    }  else if dtime <= MIN {
         time = ("Just now").localized()
    }
    
    else if dtime <= HOUR {
        let mins = Int(dtime/MIN)
        var str: String =  " mins ago"
        if mins == 1{
            str = " min ago"
        }
        time = (String(mins) + str).localized()
    } else if dtime <= DAY {
        let hours: Int = Int(dtime/HOUR)
        var str: String =  " hours ago"
             if hours == 1{
                 str = " hour ago"
             }
             time = (String(hours) + str).localized()
        
    } else if dtime <= WEEK {
          let days: Int = Int(dtime/DAY)
              var str: String =  " days ago"
                     if days == 1{
                         str = " day ago"
                     }
                     time = (String(days) + str).localized()
                
    }
    else {
    let weeks: Int = Int(dtime/WEEK)
           var str: String =  " weeks ago"
                  if weeks == 1{
                      str = " week ago"
                  }
                  time = (String(weeks) + str).localized()
    }
    return time
    
}


extension Sequence where Iterator.Element: Hashable {
    func unique() -> [Iterator.Element] {
        var alreadyAdded = Set<Iterator.Element>()
        return self.filter { alreadyAdded.insert($0).inserted }
    }
}


var arrCategory = ["TRAVEL",
                   "COOKING",
                   "MOVIE",
                   "READING"]
