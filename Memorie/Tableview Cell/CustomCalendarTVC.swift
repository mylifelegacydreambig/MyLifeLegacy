//
//  CustomCalendarTVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class CustomCalendarTVC: UITableViewCell {
    @IBOutlet weak var eventLabel: Label!
    @IBOutlet weak var MonthLabel: Label!
    @IBOutlet weak var DayLabel: Label!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
