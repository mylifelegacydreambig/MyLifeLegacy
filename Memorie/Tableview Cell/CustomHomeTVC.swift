//
//  CustomHomeTVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class CustomHomeTVC: UITableViewCell {

    @IBOutlet weak var titleLbl: Label!
    @IBOutlet weak var subTitleLbl: Label!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var vaultBtn: UIButton!
    @IBOutlet weak var arrowBtn: UIButton!
    
    
    @objc func switchValueDidChange(sender:UISwitch!) {
           if  sender.isOn == true{
            me[0].isPublic = true
            subTitleLbl.text = "Your profile is set to public."

        } else {
 me[0].isPublic = false
       subTitleLbl.text = "Your profile is set to private."
        }
        
        UpdateUser(methodhandler: Status)
    }
    
    func Status(){
        displayToast("Your profile settings have been updated.".localized())
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if me[0].isPublic == true {
            mySwitch.isOn = true
            subTitleLbl.text = "Your profile is set to public."
        } else{
            mySwitch.isOn = false
               subTitleLbl.text = "Your profile is set to private."
        }
        
        mySwitch.addTarget(self, action: #selector(self.switchValueDidChange), for: .valueChanged)

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
