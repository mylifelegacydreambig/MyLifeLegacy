//
//  MyFriendsFamilyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit
import DynamicColor

class MyFriendsFamilyVC: UIViewController {

    
    @IBOutlet weak var imgBtn: Button!
       @IBOutlet weak var NameLbl: Label!
    
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            let cell : CustomFriendTVC = tblView.dequeueReusableCell(withIdentifier: "CustomFriendTVC") as! CustomFriendTVC
           cell.imgBtn.sd_cancelCurrentImageLoad()

        }
    
    var senderinput: InvitationInput = InvitationInput(primaryKey: globalusername+"-contact", sortKey: "n/a", status: "ACCEPTED", lastEdited: Date().SQL(), isRead: true)
   
     var receiverinput: InvitationInput = InvitationInput(primaryKey: "n/a" ,sortKey: globalusername, status: "ACCEPTED", lastEdited: Date().SQL(), isRead: true)
    
    
    @IBAction func AcceptTapped(_ sender: Any) {
        senderinput.status = "ACCEPTED"
        receiverinput.status = "ACCEPTED"
        UpdateInvitation(input: senderinput, methodhandler: AcceptMessage)
        UpdateInvitation(input: receiverinput, methodhandler: AcceptMessage)
    }
    
    @IBAction func RejectTapped(_ sender: Any) {
        senderinput.status = "REJECTED"
              receiverinput.status = "REJECTED"
              UpdateInvitation(input: senderinput, methodhandler: RejectMessage)
              UpdateInvitation(input: receiverinput, methodhandler: RejectMessage)
    }
    
    func AcceptMessage(){
        displayToast("The connection request is accepted.")
        optionView.isHidden = true
        viewDidAppear(true)
    }
    
    func RejectMessage(){
        displayToast("The connection request is declined.")
optionView.isHidden = true
        viewDidAppear(true)
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
    
    
    func Proceed(){
        let vc : FriendProfileVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "FriendProfileVC") as! FriendProfileVC
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


extension MyFriendsFamilyVC : UITableViewDelegate, UITableViewDataSource {
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
        
        
        if finaldata.status == "DECISION_PENDING" {
            cell.statusLbl.text = "Respond To Invitation"
        }
        else if finaldata.status == "SENT_PENDING"  {
            cell.statusLbl.text = "Pending Invitation"
        }
        else{
            cell.statusLbl.text = ""
        }
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard indexPath.row < arrInvitations.count else {
                  return               }
       
        
        let finaldata: invitation = arrInvitations[indexPath.row]
        
        senderinput.sortKey = finaldata.sortKey
        receiverinput.primaryKey = finaldata.sortKey+"-contact"
            NameLbl.text = finaldata.firstName
              let username = finaldata.sortKey
              let tempstr: String = username + "-profile.jpg"
              let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: username + "/" + tempstr, height: Int(imgBtn.frame.height), width: Int(imgBtn.frame.width))
              imgBtn.setProfileImage(url: profilePicMainurl, profilename: username)
        
        
        if finaldata.status == "DECISION_PENDING" {
            //Respond To Invitation
            acceptRejectView.isHidden = false
            dismissView.isHidden = true
            displaySubViewtoParentView(self.view, subview: optionView)
        }
        else if finaldata.status == "SENT_PENDING" {
            //Pending Invitation
            acceptRejectView.isHidden = true
            dismissView.isHidden = false
            displaySubViewtoParentView(self.view, subview: optionView)
        }
        else {
            
            
            friend = finaldata
            
            Proceed()
        }
    }
}
