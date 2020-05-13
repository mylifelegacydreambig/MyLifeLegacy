//
//  CreateProfileVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

var editProfile: Bool = false
class CreateProfileVC: UIViewController {
    
    @IBOutlet weak var nameTxt: TextField!
    
    @IBOutlet weak var maleBtn: UIButton!
    
    @IBOutlet weak var FemaleBtn: UIButton!
    
    @IBAction func maleBtnTapped(_ sender: Any) {
        if maleBtn.isSelected == true{
         
        } else {
             maleBtn.isSelected = true
                     FemaleBtn.isSelected = false

        }
        
    }
    @IBOutlet weak var DateView: UIView!
    
    @IBAction func femaleBtnTapped(_ sender: Any) {
        if FemaleBtn.isSelected == true{
                  
               } else {
               maleBtn.isSelected = false
                                     FemaleBtn.isSelected = true
            

               }
    }
    
    @IBOutlet weak var birthdayTxt: TextField!
    
    func CheckValidation(){
        guard nameTxt.text!.count > 0 else {
            displayToast("Please enter a valid name".localized())
            return
        }
        me[0].firstName = nameTxt.text!
        
        if FemaleBtn.isSelected == true {
            me[0].gender = "F"
        } else if maleBtn.isSelected == true {
            me[0].gender = "M"
        }
        
        if PhoneTxt.text!.count > 0 {
            me[0].phone = PhoneTxt.text!
        }
        
        if GroupTxt.text!.count > 0  {
            me[0].groups = GroupTxt.text!
        }
        
        me[0].email = globalusername
        
        AppDelegate().sharedDelegate().showLoader()
        DispatchQueue.main.async{
            UpdateUser(methodhandler: self.Proceed)
        }
        
   
    }
    
    
    func Proceed(){
        AppDelegate().sharedDelegate().removeLoader()
        let vc = STORYBOARD.HOME.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                                          self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBOutlet weak var GroupTxt: TextField!
    
    @IBOutlet weak var PhoneTxt: TextField!
    
    @IBAction func DatePickerChanged(_ sender: Any) {
        
        let date = datePicker.date
        let calender = Calendar.current
        let components = calender.dateComponents([.year,.month,.day,.hour,.minute,.second], from: date)
   
        var arr: [String] = []
        
      
        if let month = components.month{
                   arr.append(String(month))
                 }
        
        if let day = components.day{
                        arr.append(String(day))
                      }
        
        if let year = components.year{
                  arr.append(String(year))
                }
              
        
        
        me[0].birthDay = date.SQL().components(separatedBy: "T").first!
        birthdayTxt.text = me[0].birthDay
        print(datePicker.date)
        
    }
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func hideDateView(_ sender: Any) {
         DateView.isHidden = true
    }
    
    
    @IBAction func clickToPickDate(_ sender: Any) {
        DateView.isHidden = false
        
    }
    
    func SetData(){
        
        if editProfile == true{
            nameTxt.text = me[0].firstName
            if me[0].gender == "M"{
                maleBtn.isSelected = true
            } else if me[0].gender == "F"{
                FemaleBtn.isSelected = false
            }
            PhoneTxt.text = me[0].phone
            birthdayTxt.text = me[0].birthDay
            GroupTxt.text = me[0].groups
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        
    displaySubViewtoParentView(self.view, subview: DateView)
        DateView.isHidden = true
        maleBtn.setImage(UIImage(named:"radio_on"), for: .highlighted)
         maleBtn.setImage(UIImage(named:"radio_off"), for: .normal)
        FemaleBtn.setImage(UIImage(named:"radio_off"), for: .normal)
        FemaleBtn.setImage(UIImage(named:"radio_on"), for: .highlighted)
        SetData()
        
        // Do any additional setup after loading the view.
    }
    

    //MARK:- Button click event
    @IBAction func clickToSubmit(_ sender: Any) {
        self.view.endEditing(true)
        CheckValidation()
       
    }
    
    @IBAction func clickToBack(_ sender: Any) {
        self.view.endEditing(true)
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
