//
//  Utility.swift
//  Cozy Up
//
//  Created by Keyur on 15/10/18.
//  Copyright © 2018 Keyur. All rights reserved.
//

import UIKit
import Toaster
import AVFoundation
import SKPhotoBrowser
import SDWebImage
import SafariServices

struct PLATFORM {
    static var isSimulator: Bool {
        return TARGET_OS_SIMULATOR != 0
    }
}

//MARK:- Image Function
func compressImage(_ image: UIImage, to toSize: CGSize) -> UIImage {
    var actualHeight: Float = Float(image.size.height)
    var actualWidth: Float = Float(image.size.width)
    let maxHeight: Float = Float(toSize.height)
    //600.0;
    let maxWidth: Float = Float(toSize.width)
    //800.0;
    var imgRatio: Float = actualWidth / actualHeight
    let maxRatio: Float = maxWidth / maxHeight
    //50 percent compression
    if actualHeight > maxHeight || actualWidth > maxWidth {
        if imgRatio < maxRatio {
            //adjust width according to maxHeight
            imgRatio = maxHeight / actualHeight
            actualWidth = imgRatio * actualWidth
            actualHeight = maxHeight
        }
        else if imgRatio > maxRatio {
            //adjust height according to maxWidth
            imgRatio = maxWidth / actualWidth
            actualHeight = imgRatio * actualHeight
            actualWidth = maxWidth
        }
        else {
            actualHeight = maxHeight
            actualWidth = maxWidth
        }
    }
    let rect = CGRect(x: CGFloat(0.0), y: CGFloat(0.0), width: CGFloat(actualWidth), height: CGFloat(actualHeight))
    UIGraphicsBeginImageContext(rect.size)
    image.draw(in: rect)
    let img: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
    let imageData1: Data? = img?.jpegData(compressionQuality: 1.0)//UIImageJPEGRepresentation(img!, CGFloat(1.0))//UIImage.jpegData(img!)
    UIGraphicsEndImageContext()
    return  imageData1 == nil ? image : UIImage(data: imageData1!)!
}


//MARK:- UI Function
func getTableBackgroundViewForNoData(_ str:String, size:CGSize) -> UIView {
    let noDataLabel: UILabel     = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
    noDataLabel.text          = str.decoded
    noDataLabel.textColor     = ColorType.DarkGray.value
    //noDataLabel.font          = Regular18Font
    noDataLabel.textAlignment = .center
    return noDataLabel
}

func setImageBackgroundImage(_ imgView : UIImageView, _ strUrl : String, _ placeHolderImg : String)
{
    if strUrl == "" {
        imgView.image = UIImage.init(named: placeHolderImg)
        return
    }
    var newStrUrl = strUrl
    if strUrl.contains(" ") {
        newStrUrl = strUrl.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
    }
    imgView.sd_setImage(with: URL(string: newStrUrl), placeholderImage: UIImage.init(named: placeHolderImg)) { (image, error, SDImageCacheType, url) in
        if image != nil {
            imgView.image = image?.imageCropped(toFit: CGSize(width: imgView.frame.size.width, height: imgView.frame.size.height))
        }else{
            imgView.image = UIImage.init(named: placeHolderImg)
        }
    }
}

func setImageAspectFit(_ imgView : UIImageView, _ strUrl : String, _ placeHolderImg : String)
{
    if strUrl == "" {
        imgView.image = UIImage.init(named: placeHolderImg)
        return
    }
    imgView.sd_setImage(with: URL(string: strUrl), placeholderImage: UIImage.init(named: placeHolderImg)) { (image, error, SDImageCacheType, url) in
        if image != nil {
            imgView.contentMode = .scaleAspectFit
            imgView.image = image
        }else{
            imgView.image = UIImage.init(named: placeHolderImg)
        }
    }
}

func setButtonBackgroundImage(_ button : UIButton, _ strUrl : String)
{
    if strUrl == "" {
        button.setBackgroundImage(UIImage.init(named: "avtar"), for: .normal)
        return
    }
    button.sd_setBackgroundImage(with: URL(string: strUrl), for: UIControl.State.normal, completed: { (image, error, SDImageCacheType, url) in
        if image != nil{
            button.setBackgroundImage(image?.imageCropped(toFit: CGSize(width: button.frame.size.width, height: button.frame.size.height)), for: .normal)
        }
        else
        {
            button.setBackgroundImage(UIImage.init(named: "avtar"), for: .normal)
        }
    })
}

func setButtonImage(_ button : UIButton, _ strUrl : String, _ placeholder : String)
{
    if strUrl == "" {
        button.setImage(UIImage.init(named: placeholder), for: .normal)
        return
    }
    button.sd_setBackgroundImage(with: URL(string: strUrl), for: UIControl.State.normal, completed: { (image, error, SDImageCacheType, url) in
        if image != nil{
            button.setImage(image, for: .normal)
        }else{
            button.setImage(UIImage.init(named: placeholder), for: .normal)
        }
    })
}

//MARK:- Toast
func displayToast(_ message:String)
{
    let toast = Toast(text: getTranslate(message))
    toast.show()
}

func printData(_ items: Any..., separator: String = " ", terminator: String = "\n")
{
    print(items)
}

func showLoader()
{
     AppDelegate().sharedDelegate().showLoader()
}
func removeLoader()
{
     AppDelegate().sharedDelegate().removeLoader()
}

func showAlertWithOption(_ title:String, message:String, btns:[String] ,completionConfirm: @escaping () -> Void,completionCancel: @escaping () -> Void){
    
    SweetAlert().showAlert(getTranslate(title), subTitle: message, style: .warning, buttonTitle: getTranslate(btns[0]), buttonColor: BlueColor, otherButtonTitle: getTranslate(btns[1])) { (isOtherButton) in
        if isOtherButton {
            completionCancel()
            
        }else{
            completionConfirm()
        }
    }
    
    
//    let myAlert = UIAlertController(title:NSLocalizedString(title, comment: ""), message:NSLocalizedString(message, comment: ""), preferredStyle: UIAlertController.Style.alert)
//    let rightBtn = UIAlertAction(title: NSLocalizedString(btns[0].lowercased(), comment: ""), style: UIAlertAction.Style.default, handler: { (action) in
//        completionCancel()
//    })
//    let leftBtn = UIAlertAction(title: NSLocalizedString(btns[1].lowercased(), comment: ""), style: UIAlertAction.Style.cancel, handler: { (action) in
//        completionConfirm()
//    })
//    myAlert.addAction(rightBtn)
//    myAlert.addAction(leftBtn)
//    AppDelegate().sharedDelegate().window?.rootViewController?.present(myAlert, animated: true, completion: nil)
}

func showAlert(_ title:String, message:String, completion: @escaping () -> Void) {
    let myAlert = UIAlertController(title:getTranslate(title), message:getTranslate(message), preferredStyle: UIAlertController.Style.alert)
    myAlert.view.tintColor = BlueColor
    let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:{ (action) in
        completion()
    })
    myAlert.addAction(okAction)
    AppDelegate().sharedDelegate().window?.rootViewController?.present(myAlert, animated: true, completion: nil)
}

func displaySubViewtoParentView(_ parentview: UIView! , subview: UIView!)
{
    subview.translatesAutoresizingMaskIntoConstraints = false
    parentview.addSubview(subview);
    parentview.addConstraint(NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentview, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0.0))
    parentview.addConstraint(NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentview, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 0.0))
    parentview.addConstraint(NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentview, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0.0))
    parentview.addConstraint(NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentview, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 0.0))
    parentview.layoutIfNeeded()
}

func displaySubViewWithScaleOutAnim(_ view:UIView){
    view.transform = CGAffineTransform(scaleX: 0.4, y: 0.4)
    view.alpha = 1
    UIView.animate(withDuration: 0.35, delay: 0.0, usingSpringWithDamping: 0.55, initialSpringVelocity: 1.0, options: [], animations: {() -> Void in
        view.transform = CGAffineTransform.identity
    }, completion: {(_ finished: Bool) -> Void in
    })
}

func displaySubViewWithScaleInAnim(_ view:UIView){
    UIView.animate(withDuration: 0.25, animations: {() -> Void in
        view.transform = CGAffineTransform(scaleX: 0.65, y: 0.65)
        view.alpha = 0.0
    }, completion: {(_ finished: Bool) -> Void in
        view.removeFromSuperview()
    })
}

func heightForView(text:String, width:CGFloat) -> CGFloat{
    let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
    label.numberOfLines = 0
    label.lineBreakMode = NSLineBreakMode.byWordWrapping
    label.font = UIFont(name: APP_LIGHT, size: 14.0)
    label.text = text
    label.sizeToFit()
    return label.frame.height
}

func isValidGStNumber(testStr:String) -> Bool {
    let emailRegEx = "^([0]{1}[1-9]{1}|[1-2]{1}[0-9]{1}|[3]{1}[0-7]{1})([a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}[1-9a-zA-Z]{1}[zZ]{1}[0-9a-zA-Z]{1})+$"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
}

func isValidateMobileNumber(value: String) -> Bool {
    let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
    let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
    let result =  phoneTest.evaluate(with: value)
    return result
}

//MARK: - function to Trimming String Text
func range(text: String) -> String{
    let trimmedString = text.trimmingCharacters(in: .whitespacesAndNewlines)
    return trimmedString
}
//MARK: - function to Check Email vaildation
func isValidEmail(testStr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
}


//MARK:- Delay Features
func delay(_ delay:Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(
        deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
}


//MARK:- Open Url
func openUrlInSafari(strUrl : String)
{
    if strUrl.trimmed == "" {
        return
    }
    var newStrUrl = strUrl
    if !newStrUrl.contains("http://") && !newStrUrl.contains("https://") {
        newStrUrl = "http://" + strUrl
    }
    if let url = URL(string: newStrUrl) {
        if UIApplication.shared.canOpenURL(url) {
            if #available(iOS 11.0, *) {
                let config = SFSafariViewController.Configuration()
                config.entersReaderIfAvailable = true
                let vc = SFSafariViewController(url: url, configuration: config)
                UIApplication.topViewController()!.present(vc, animated: true)
            } else {
                // Fallback on earlier versions
                UIApplication.shared.open(url, options: [:]) { (isOpen) in
                    printData(isOpen)
                }
            }
        }
    }
}

//MARK:- Color function
func colorFromHex(hex : String) -> UIColor
{
    return colorWithHexString(hex, alpha: 1.0)
}

func colorFromHex(hex : String, alpha:CGFloat) -> UIColor
{
    return colorWithHexString(hex, alpha: alpha)
}

func colorWithHexString(_ stringToConvert:String, alpha:CGFloat) -> UIColor {
    
    var cString:String = stringToConvert.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: alpha
    )
}

func imageFromColor(color: UIColor) -> UIImage {
    let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    context?.setFillColor(color.cgColor)
    context?.fill(rect)
    
    let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return image!
}

func convertToDictionary(text: String) -> [String: Any]? {
    if let data = text.data(using: .utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            printData(error.localizedDescription)
        }
    }
    return nil
}

func attributedStringWithColor(_ mainString : String, _ strings: [String], color: UIColor, font: UIFont? = nil) -> NSAttributedString {
    let attributedString = NSMutableAttributedString(string: mainString)
    for string in strings {
        let range = (mainString as NSString).range(of: string)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        if font != nil {
            attributedString.addAttribute(NSAttributedString.Key.font, value: font!, range: range)
        }
    }
    return attributedString
}

func attributeStringStrikeThrough(_ mainString : String) -> NSAttributedString
{
    let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: mainString)
    attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
    return attributeString
}

func displayFullScreenImage(_ arrImg : [String], _ index : Int) {
    var images = [SKPhoto]()
    for temp in arrImg {
        let photo = SKPhoto.photoWithImageURL(temp)
        photo.shouldCachePhotoURLImage = true
        images.append(photo)
    }
    // 2. create PhotoBrowser Instance, and present.
    let browser = SKPhotoBrowser(photos: images)
    browser.initializePageIndex(index)
    UIApplication.topViewController()!.present(browser, animated: true, completion: {})
}

class L102Language {
/// get current Apple language
    class func currentAppleLanguage() -> String
    {
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        if current == "" {
            return "en"
        }
        return current
    }
    
    // set @lang to be the first in Applelanguages list
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        userdef.synchronize()
    }
    
    class var isRTL: Bool {
        return L102Language.currentAppleLanguage() == "ar"
    }
}

func isArabicLang() -> Bool
{
    if L102Language.currentAppleLanguage() == "ar" {
        return true
    }
    return false
}

func getTranslate(_ str : String) -> String
{
    return NSLocalizedString(str, comment: "")
}

//Project methods
func getGroundType(_ status : String) -> String
{
    if status.lowercased() == "outdoor" {
        return NSLocalizedString("ground_outdoor", comment: "")
    }
    else if status.lowercased() == "indoor" {
        return NSLocalizedString("ground_indoor", comment: "")
    }
    return status
}
