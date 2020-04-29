//
//  Fonts.swift
//  Cozy Up
//
//  Created by Keyur on 22/05/18.
//  Copyright © 2018 Keyur. All rights reserved.
//

import Foundation
import UIKit

let APP_REGULAR = "SFProText-Regular"
let APP_BOLD = "SFProText-Bold"
let APP_LIGHT = "SFProText-Light"
let APP_MEDIUM = "SFProText-Medium"

enum FontType : String {
    case Clear = ""
    case ARegular = "ar"
    case ABold = "ab"
    case ALight = "al"
    case AMedium = "am"
}


extension FontType {
    var value: String {
        get {
            switch self {
            case .Clear:
                return APP_REGULAR
            
            case .ARegular:
                return APP_REGULAR
            case .ABold:
                return APP_BOLD
            case .ALight:
                return APP_LIGHT
            case .AMedium:
                return APP_MEDIUM
                
            }
        }
    }
}

