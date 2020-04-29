//
//  MyFriendsFamilyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class MyFriendsFamilyVC: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet var optionView: UIView!
    @IBOutlet weak var acceptRejectView: UIView!
    @IBOutlet weak var dismissView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomFriendTVC", bundle: nil), forCellReuseIdentifier: "CustomFriendTVC")
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToCloseOptionView(_ sender: Any) {
        optionView.removeFromSuperview()
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


extension MyFriendsFamilyVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomFriendTVC = tblView.dequeueReusableCell(withIdentifier: "CustomFriendTVC") as! CustomFriendTVC
        
        if indexPath.row == 0 {
            cell.statusLbl.text = "Respond To Invitation"
        }
        else if indexPath.row == 1 {
            cell.statusLbl.text = "Pending Invitation"
        }
        else{
            cell.statusLbl.text = ""
        }
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            //Respond To Invitation
            acceptRejectView.isHidden = false
            dismissView.isHidden = true
            displaySubViewtoParentView(self.view, subview: optionView)
        }
        else if indexPath.row == 1 {
            //Pending Invitation
            acceptRejectView.isHidden = true
            dismissView.isHidden = false
            displaySubViewtoParentView(self.view, subview: optionView)
        }
    }
}
