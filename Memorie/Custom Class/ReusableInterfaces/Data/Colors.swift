//
//  Colors.swift
//  Cozy Up
//
//  Created by Keyur on 15/10/18.
//  Copyright © 2018 Keyur. All rights reserved.
//

import UIKit

var ClearColor : UIColor = UIColor.clear //0
var WhiteColor : UIColor = UIColor.white //1
var DarkGrayColor : UIColor = colorFromHex(hex: "696771") //2
var LightGrayColor : UIColor = colorFromHex(hex: "B8B8B8") //3
var ExtraLightGrayColor : UIColor = colorFromHex(hex: "B2B0B0") //4
var BlackColor : UIColor = UIColor.black   //5
var BGColor : UIColor = colorFromHex(hex: "0066FF") //6
var PinkColor : UIColor = colorFromHex(hex: "D81F72") //7
var LightBlueColor : UIColor = colorFromHex(hex: "83B6CF") //8
var BlueColor : UIColor = colorFromHex(hex: "2D81C2") //9

enum ColorType : Int32 {
    case Clear = 0
    case White = 1
    case DarkGray = 2
    case LightGray = 3
    case ExtraLightGray = 4
    case Black = 5
    case BG = 6
    case Pink = 7
    case LightBlue = 8
    case Blue = 9
}

extension ColorType {
    var value: UIColor {
        get {
            switch self {
                case .Clear: //0
                    return ClearColor
                case .White: //1
                    return WhiteColor
                case .DarkGray: //2
                    return DarkGrayColor
                case .LightGray: //3
                    return LightGrayColor
                case .ExtraLightGray: //4
                    return ExtraLightGrayColor
                case .Black: //5
                    return BlackColor
                case .BG: //6
                    return BGColor
                case .Pink: //7
                    return PinkColor
                case .LightBlue: //8
                    return LightBlueColor
                case .Blue: //9
                    return BlueColor
                
            }
        }
    }
}

enum GradientColorType : Int32 {
    case Clear = 0
    case App = 1
}

extension GradientColorType {
    var layer : GradientLayer {
        get {
            let gradient = GradientLayer()
            switch self {
            case .Clear: //0
                gradient.frame = CGRect.zero
            case .App: //1
                gradient.colors = [
                    WhiteColor.cgColor,
                    BlueColor.cgColor
                ]
                gradient.locations = [0, 1]
                gradient.startPoint = CGPoint.zero
                gradient.endPoint = CGPoint(x: 1, y: 0)
            }
            
            return gradient
        }
    }
}


enum GradientColorTypeForView : Int32 {
    case Clear = 0
    case App = 1
}


extension GradientColorTypeForView {
    var layer : GradientLayer {
        get {
            let gradient = GradientLayer()
            switch self {
            case .Clear: //0
                gradient.frame = CGRect.zero
            case .App: //1
                gradient.colors = [
                    WhiteColor.cgColor,
                    BlueColor.cgColor
                ]
                gradient.locations = [0, 1]
                gradient.startPoint = CGPoint(x: 0.8, y: 1.0)
                gradient.endPoint = CGPoint(x: 0.8, y: 0.0)

            }
            
            return gradient
        }
    }
}

