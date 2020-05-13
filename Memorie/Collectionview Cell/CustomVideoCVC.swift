//
//  CustomVideoCVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class CustomVideoCVC: UICollectionViewCell {
var youtuber : String?
    weak var delegate : YoutuberTableViewCellDelegate?
    
      @IBAction func subscribeButtonTapped(_ sender: UIButton){
          // ask the delegate (in most case, its the view controller) to
          // call the function 'subscribeButtonTappedFor' on itself.
          if let youtuber = youtuber,
              let delegate = delegate {
              self.delegate?.youtuberTableViewCell(self, subscribeButtonTappedFor: youtuber)
          }
      }
    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var AccessLabel: Label!
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var nameLbl: Label!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var vaultView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
