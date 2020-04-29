//
//  Fonts.swift
//  Cozy Up
//
//  Created by Keyur on 22/05/18.
//  Copyright © 2018 Keyur. All rights reserved.
//

import Foundation
import UIKit

let APP_REGULAR = "MyriadPro-Regular"
let APP_BOLD = "MyriadPro-Bold"
let APP_BLACK = "MyriadPro-Black"
let APP_LIGHT = "MyriadPro-Light"
let APP_SEMIBOLD = "MyriadPro-Semibold"

enum FontType : String {
    case Clear = ""
    case ARegular = "ar"
    case ABold = "ab"
    case ABlack = "abl"
    case ALight = "al"
    case ASemiBold = "as"
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
            case .ABlack:
                return APP_BLACK
            case .ALight:
                return APP_LIGHT
            case .ASemiBold:
                return APP_SEMIBOLD
                
            }
        }
    }
}

