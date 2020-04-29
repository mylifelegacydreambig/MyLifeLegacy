//
//  HomeVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var constraintHeightTblView: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomHomeTVC", bundle: nil), forCellReuseIdentifier: "CustomHomeTVC")
        constraintHeightTblView.constant = 80 * 4
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

extension HomeVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomHomeTVC = tblView.dequeueReusableCell(withIdentifier: "CustomHomeTVC") as! CustomHomeTVC
        cell.arrowBtn.isHidden = true
        cell.mySwitch.isHidden = true
        cell.vaultBtn.isHidden = true
        if indexPath.row == 0 {
            cell.titleLbl.text = "My Legacy"
            cell.subTitleLbl.text = "Access all your memories here."
            cell.arrowBtn.isHidden = false
        }
        else if indexPath.row == 1 {
            cell.titleLbl.text = "My Friends & Family"
            cell.subTitleLbl.text = "Access the memories of your friends & family."
            cell.arrowBtn.isHidden = false
        }
        else if indexPath.row == 2 {
            cell.titleLbl.text = "My Vault"
            cell.subTitleLbl.text = "Only available for Premium Members."
            cell.vaultBtn.isHidden = false
        }
        else if indexPath.row == 3 {
            cell.titleLbl.text = "Profile Visibility"
            cell.subTitleLbl.text = "Set profile visibility to public or private."
            cell.mySwitch.isHidden = false
        }
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc : MyLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "MyLegacyVC") as! MyLegacyVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 1 {
            let vc : MyFriendsFamilyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "MyFriendsFamilyVC") as! MyFriendsFamilyVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 2 {
            let vc : MyVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "MyVaultVC") as! MyVaultVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
