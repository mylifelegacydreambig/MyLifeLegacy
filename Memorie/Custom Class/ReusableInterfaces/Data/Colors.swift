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
var DarkGrayColor : UIColor = colorFromHex(hex: "222222") //2
var LightGrayColor : UIColor = colorFromHex(hex: "B8B8B8") //3
var ExtraLightGrayColor : UIColor = colorFromHex(hex: "B2B0B0") //4
var BlackColor : UIColor = UIColor.black   //5
var BlueColor : UIColor = colorFromHex(hex: "0041C4") //6
var PurpleColor : UIColor = colorFromHex(hex: "7F61DE") //7
var RedColor : UIColor = colorFromHex(hex: "F77777") //8
var LightYellowColor : UIColor = colorFromHex(hex: "E6C574") //9
var YellowColor : UIColor = colorFromHex(hex: "FDCD42") //10
var DarkRedColor : UIColor = colorFromHex(hex: "F32B37") //11
var DarkBorderColor : UIColor = colorFromHex(hex: "464553") //12
var CreamColor : UIColor = colorFromHex(hex: "EEDC8D") //13
var GreenColor : UIColor = colorFromHex(hex: "00D882") //14
var LightBorderColor : UIColor = colorFromHex(hex: "EBEBEB") //15
var DarkPurpleColor : UIColor = colorFromHex(hex: "473597") //16

enum ColorType : Int32 {
    case Clear = 0
    case White = 1
    case DarkGray = 2
    case LightGray = 3
    case ExtraLightGray = 4
    case Black = 5
    case Blue = 6
    case Purple = 7
    case Red = 8
    case LightYellow = 9
    case Yellow = 10
    case DarkRed = 11
    case DarkBorder = 12
    case Cream = 13
    case Green = 14
    case LightBorder = 15
    case DarkPurple = 16
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
                case .Blue: //6
                    return BlueColor
                case .Purple: //7
                    return PurpleColor
                case .Red: //8
                    return RedColor
                case .LightYellow: //9
                    return LightYellowColor
                case .Yellow: //10
                    return YellowColor
                case .DarkRed: //11
                    return DarkRedColor
                case .DarkBorder: //12
                    return DarkBorderColor
                case .Cream: //13
                    return CreamColor
                case .Green: //14
                    return GreenColor
                case .LightBorder: //15
                    return LightBorderColor
                case .DarkPurple: //16
                    return DarkPurpleColor
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

