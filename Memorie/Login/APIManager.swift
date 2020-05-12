//
//  APIManager.swift
//  Memorie
//
//  Created by Abhishek Chakrabarti on 5/4/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation
import SystemConfiguration
import Alamofire
import AWSS3


struct API {
//
//      static let IMAGE_URL = "https://r8nh4ktd3j.execute-api.us-east-1.amazonaws.com/image/"
//    static let BASE_URL = "https://hbxezvqvx5.execute-api.us-east-1.amazonaws.com/api/"
//       static let ROOT_FOLDER = "uplancer-students"
//     static let CLOUDFRONT_URL =  "https://d26wvoptpw27t9.cloudfront.net/"
 static let IMAGE_URL = "https://lvbq538k1c.execute-api.us-east-1.amazonaws.com/image/"
    static let BASE_URL = "https://p77vlmmc56.execute-api.us-east-2.amazonaws.com/api/"
    static let ROOT_FOLDER = "mylifelegacy-bucket"
     static let CLOUDFRONT_URL = "https://d18dcswmq1fvu5.cloudfront.net/"
    static let BASES3_STEM = "https://mylifelegacy-bucket.s3.amazonaws.com/"
    static let GET_SIGNED_URL       =       BASE_URL + "lambda-upload-signed-url"
    
}
public class APIManager {
    
    static let shared = APIManager()
    
    class func isConnectedToNetwork() -> Bool {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        var flags = SCNetworkReachabilityFlags()
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
            return false
        }
        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        return (isReachable && !needsConnection)
    }
    
    func getJsonHeader() -> HTTPHeaders{
        let headers : HTTPHeaders = [
            "Content-Type" : "application/x-www-form-urlencoded"
        ]
        return headers
        
    }
    func getJsonHeaderWithToken() -> [String:String]{
        return ["Content-Type":"application/json", "Authorization" : getAccessToken()]
    }
    func getMultipartHeader() -> [String:String]{
        return ["Content-Type":"multipart/form-data"]//, "Authorization" : getAccessToken()]
    }
    
    func networkErrorMsg()
    {
        removeLoader()
        displayToast("You are not connected to the internet")
    }
    
    func toJson(_ dict:[String:Any]) -> String {
        let jsonData = try? JSONSerialization.data(withJSONObject: dict, options: [])
        let jsonString = String(data: jsonData!, encoding: .utf8)
        return jsonString!
    }
    
    
   
    
    func serviceCallToDownloadFile(_ strUrl : String, _ completion: @escaping (_ success: Bool,_ fileLocation: URL?) -> Void) {
        
        let fileManager = FileManager.default
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let newURL = strUrl.replacingOccurrences(of: " ", with: "+")
        let fileName = newURL.components(separatedBy: "/").last!
        let filePath = documentsURL.appendingPathComponent(fileName)
        
        if fileManager.fileExists(atPath: filePath.path) {
            print("File Already downloaded")
             completion(true, filePath)
        }
        
        Alamofire.request(newURL).downloadProgress(closure : { (progress) in
            print(progress.fractionCompleted)
            
        }).responseData{ (response) in
            print(response)
      
            if let data = response.result.value {
                do {
                    try data.write(to: filePath)
                    print(filePath.absoluteString)
                    print("File download successfully.")
                    completion(true, filePath)
                } catch {
                    print("Something went wrong!")
                }
                
            }
        }
    }
    
  
    
    func serviceCallToGetSignedURL(data: Data,_ param : [String : Any], _ completion: @escaping () -> Void) {
        if !APIManager.isConnectedToNetwork()
        {
            APIManager().networkErrorMsg()
            return
        }
        showLoader()
        let headerParams : HTTPHeaders = APIManager.shared.getJsonHeader()
        Alamofire.request(API.GET_SIGNED_URL, method: .post, parameters: param, encoding: JSONEncoding.default, headers: headerParams).responseJSON { (response) in
            
            removeLoader()
            switch response.result {
            case .success:
                //print(response.result.value!)
                
                if let result = response.result.value as? [String:Any] {
                    if let status = result["status"] as? Bool, status {
                        completion()
                      
                        uploadData(data: data, url: result["value"] as! String, responsed: self.DummyFunction)
                        return
                    }
                }
                if let error = response.result.error
                {
                    displayToast(error.localizedDescription)
                    return
                }
                
             break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
    
    func DummyFunction(){
        
    }
    
    
}

   var imgData : Data = Data()




func apiCallToGetSignedInURL(filename: String, path: String, data: Data) {
    var param : [String :Any] = [String : Any]()
    param["filename"] = filename
    param["path-to-upload"] = path
    
    APIManager.shared.serviceCallToGetSignedURL(data: data,param) {
       
        
    }
}



func ImageS3(key: String, data: Data){
    
    var completionHandler: AWSS3TransferUtilityUploadCompletionHandlerBlock?
     var progressBlock: AWSS3TransferUtilityProgressBlock?
     let transferUtility = AWSS3TransferUtility.default()
    
        let expression = AWSS3TransferUtilityUploadExpression()
        expression.progressBlock = progressBlock
        expression.setValue("public-read", forRequestHeader: "x-amz-acl")
        transferUtility.uploadData(
            data,
            bucket: API.ROOT_FOLDER,
            key: key,
            contentType: "image/jpeg",
            expression: expression,
            completionHandler: completionHandler).continueWith { (task) -> AnyObject? in
                if let error = task.error {
                    print("Error: \(error.localizedDescription)")
                    
                    DispatchQueue.main.async {
                        print("Failed to upload image")
                    }
                }
                
                if let _ = task.result {
                    
                    DispatchQueue.main.async {
                        print("Generating Upload")
                        print("Upload Starting!")
                    }
                    
                    // Do something with uploadTask.
                }
                
                return nil;
        }
    }
    
    
    
func VideoS3(key: String, data: Data){

var completionHandler: AWSS3TransferUtilityUploadCompletionHandlerBlock?
 var progressBlock: AWSS3TransferUtilityProgressBlock?
 let transferUtility = AWSS3TransferUtility.default()

    let expression = AWSS3TransferUtilityUploadExpression()
    expression.progressBlock = progressBlock
    expression.setValue("public-read", forRequestHeader: "x-amz-acl")
    transferUtility.uploadData(
        data,
        bucket: API.ROOT_FOLDER,
        key: key,
        contentType: "video/mp4",
        expression: expression,
        completionHandler: completionHandler).continueWith { (task) -> AnyObject? in
            if let error = task.error {
                print("Error: \(error.localizedDescription)")
                
                DispatchQueue.main.async {
                    print("Failed to upload image")
                }
            }
            
            if let _ = task.result {
                
                DispatchQueue.main.async {
                    print("Generating Upload")
                    print("Upload Starting!")
                }
                
                // Do something with uploadTask.
            }
            
            return nil;
    }
}










//typealias ResponsedHandler = (Error?) -> Void
typealias ResponsedHandler = () -> Void

func uploadData(data: Data, url: String, responsed: @escaping ResponsedHandler) {
    DispatchQueue.global(qos: .utility).async {
        uploadOnSubThread(data: data, url: url, responsed: responsed)
    }
}

// ここはサブスレッド内で行われます


// メインスレッドに戻して処理を終えたいときは、これを呼び出す
func finishOnMainThread(error: Error?, responsed: @escaping ResponsedHandler) {
    DispatchQueue.main.async {
        responsed()
    }
}

func uploadOnSubThread(data: Data, url: String, responsed: @escaping ResponsedHandler) {
    
    do {
        let url = URL(string: url)!
        let headers : HTTPHeaders = [
                  "Content-Type" : "application/x-www-form-urlencoded"
              ]
        let urlRequest = try URLRequest(
            url: url,
            method: .put,
            headers: headers
        )
        let uploadRequest = Alamofire.upload(data, with: urlRequest)
        
        // 後述
        
    } catch {
        finishOnMainThread(error: error, responsed: responsed)
    }
}




func Dummy(){
}


extension String{
    func escaped() -> String{
    
    let unreserved = "-._~/?%$!:@"
    let allowed = NSMutableCharacterSet.alphanumeric()
        allowed.addCharacters(in: unreserved)

    let escapedString = self.addingPercentEncoding(withAllowedCharacters: allowed as CharacterSet)
        
        
        
        
        return escapedString!.replacingOccurrences(of: ":", with: "%3A")
    }
    
    
    
}
