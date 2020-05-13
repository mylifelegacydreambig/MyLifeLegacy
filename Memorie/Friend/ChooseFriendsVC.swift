//
//  ChooseFriendsVC.swift
//  Memorie
//
//  Created by Abhishek Chakrabarti on 5/12/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation
import UIKit
import DynamicColor

class ChooseFriendsVC: UIViewController {

    
    @IBOutlet weak var imgBtn: Button!
       @IBOutlet weak var NameLbl: Label!
    
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            let cell : CustomFriendTVC = tblView.dequeueReusableCell(withIdentifier: "CustomFriendTVC") as! CustomFriendTVC
           cell.imgBtn.sd_cancelCurrentImageLoad()

        }
    

    
    @IBAction func AcceptTapped(_ sender: Any) {

    }
    
    @IBAction func RejectTapped(_ sender: Any) {
   
    }
    

    
    @IBAction func DismissAction(_ sender: Any) {
        optionView.isHidden = true
    }
    
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet var optionView: UIView!
    @IBOutlet weak var acceptRejectView: UIView!
    @IBOutlet weak var dismissView: UIView!
    var currentInvitation: invitation!
    override func viewDidAppear(_ animated: Bool) {
        FetchInvitations(methodhandler: LoadData)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FetchInvitations(methodhandler: LoadData)
        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomFriendTVC", bundle: nil), forCellReuseIdentifier: "CustomFriendTVC")
        
    }
    
    
    func LoadData(){
         arrInvitations = arrInvitations.filter {
            $0.isBlocked == false
                                   }
        
       arrInvitations = arrInvitations.filter {
                 $0.status != "SENT_PENDING"
                                        }
        arrInvitations = arrInvitations.filter {
                   $0.status != "DECISION_PENDING"
                                          }
        
        tblView.reloadData()
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToCloseOptionView(_ sender: Any) {
        optionView.removeFromSuperview()
    }
    
    @IBAction func clickToAddFriend(_ sender: Any) {
        let vc : AddFriendsVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "AddFriendsVC") as! AddFriendsVC
        self.navigationController?.pushViewController(vc, animated: true)
        
        
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


extension ChooseFriendsVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrInvitations.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard indexPath.row < arrInvitations.count else {
            return UITableViewCell()
        }
        
        let cell : CustomFriendTVC = tblView.dequeueReusableCell(withIdentifier: "CustomFriendTVC") as! CustomFriendTVC
        
        let finaldata: invitation = arrInvitations[indexPath.row]
        let username = finaldata.sortKey
        let tempstr: String = username + "-profile.jpg"

        let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: username + "/" + tempstr, height: Int(cell.imgBtn.frame.height), width: Int(cell.imgBtn.frame.width))
                    
        cell.imgBtn.setProfileImage(url: profilePicMainurl, profilename: username)
        
        cell.nameLbl.text = finaldata.firstName
        cell.statusLbl.text = " "
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard indexPath.row < arrInvitations.count else {
                  return               }
       
        
        let finaldata: invitation = arrInvitations[indexPath.row]
        
        selectedfriend = finaldata.sortKey
        selectedfriendname = finaldata.firstName
        self.navigationController?.popViewController(animated: true)

    }
}
