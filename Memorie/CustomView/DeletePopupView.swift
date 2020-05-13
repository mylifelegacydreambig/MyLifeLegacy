//
//  DeletePopupView.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class DeletePopupView: UIView {

    override init(frame: CGRect) {
       super.init(frame: frame)
   }
   
   required init?(coder: NSCoder) {
       super.init(coder: coder)
   }
   
   @IBAction func clickToClose(_ sender: Any) {
       self.isHidden = true
   }
   
   
   @IBAction func clickToDelete(_ sender: Any) {
       self.isHidden = true

   }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
