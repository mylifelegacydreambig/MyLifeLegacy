//
//  CustomFriendTVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class CustomFriendTVC: UITableViewCell {

    @IBOutlet weak var imgBtn: Button!
    @IBOutlet weak var nameLbl: Label!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var statusLbl: Label!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
