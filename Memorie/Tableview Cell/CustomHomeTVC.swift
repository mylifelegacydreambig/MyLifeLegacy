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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
