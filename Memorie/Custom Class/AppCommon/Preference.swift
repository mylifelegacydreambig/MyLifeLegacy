//
//  Preference.swift
//  Cozy Up
//
//  Created by Keyur on 15/10/18.
//  Copyright © 2018 Keyur. All rights reserved.
//

import UIKit

class Preference: NSObject {

    static let sharedInstance = Preference()
    
    let IS_USER_LOGIN_KEY       =   "IS_USER_LOGIN"
    let USER_DATA_KEY           =   "USER_DATA"
    let MUSIC_DATA_KEY          =   "MUSIC_DATA_KEY"
}


func setDataToPreference(data: AnyObject, forKey key: String)
{
    UserDefaults.standard.set(data, forKey: key)
    UserDefaults.standard.synchronize()
}

func getDataFromPreference(key: String) -> AnyObject?
{
    return UserDefaults.standard.object(forKey: key) as AnyObject?
}

func removeDataFromPreference(key: String)
{
    UserDefaults.standard.removeObject(forKey: key)
    UserDefaults.standard.synchronize()
}

func removeUserDefaultValues()
{
    UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
    UserDefaults.standard.synchronize()
}

func setArabicLanguage()
{
    setDataToPreference(data: "ar" as AnyObject, forKey: "AppleLanguages")
}

//MARK: - Access Token
func setAccessToken(_ token: String)
{
    setDataToPreference(data: token as AnyObject, forKey: "user_access_token")
}

func getAccessToken() -> String
{
    if let token : String = getDataFromPreference(key: "user_access_token") as? String
    {
        return token
    }
    return ""
}
