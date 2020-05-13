//
//  CustomLegacyTVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit
import DropDown

protocol CustomLegacyCellDelegate: AnyObject {
    func CustomLegacyTableViewCell(_ youtuberTableViewCell: CustomLegacyTVC, subscribeButtonTappedFor youtuber: String)
    func CustomLegacyTableViewCell(_ youtuberTableViewCell: CustomLegacyTVC, likeButtonTappedFor like: String)

}



class CustomLegacyTVC: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgBtn: Button!
    @IBOutlet weak var DescriptionLabel: Label!
    @IBOutlet weak var nameLabel: Label!
    @IBOutlet weak var timeLabel: Label!
    
    @IBOutlet weak var CategoriesLbl: Label!
    @IBOutlet weak var likesLbl: Button!
    
    weak var delegate : CustomLegacyCellDelegate?
 var youtuber : String?
    var like: String?
    
    @IBAction func subscribeButtonTapped(_ sender: UIButton){
        // ask the delegate (in most case, its the view controller) to
        // call the function 'subscribeButtonTappedFor' on itself.
        if let youtuber = youtuber,
            let delegate = delegate {
            self.delegate?.CustomLegacyTableViewCell(self, subscribeButtonTappedFor: youtuber)
        }
    }
    
    
    @IBAction func likeButtonTapped(_ sender: UIButton){
           // ask the delegate (in most case, its the view controller) to
           // call the function 'subscribeButtonTappedFor' on itself.
           if let like = like,
               let delegate = delegate {
               self.delegate?.CustomLegacyTableViewCell(self, likeButtonTappedFor: like)
           }
       }
    
    
    
    var sortOptions: [String] = ["Delete Post".localized(),"Edit Post".localized()]
          
//          func DropDownSetUp(){
//
//              let dropDown = DropDown()
//              dropDown.anchorView = MoreBtn
//                     dropDown.dataSource = sortOptions
//                     dropDown.show()
//                     dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
//                       print("Selected item: \(item) at index: \(index)")
//
//                      if index == 0{
//
//                      } else if index == 1 {
//
//
//
//                        }
//
//
//                          dropDown.hide()
//                     }
//          }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
    }

    @IBOutlet weak var LikeBtn: UIButton!
    @IBOutlet weak var MoreBtn: UIButton!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
