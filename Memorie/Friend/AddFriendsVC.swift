//
//  AddFriendsVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class AddFriendsVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var searchTxt: TextField!
    @IBOutlet weak var imgBtn: Button!
    
    @IBOutlet weak var SendBtn: Button!
    @IBOutlet weak var NameLbl: Label!
    
  
    
    var receiverinput: InvitationInput = InvitationInput(primaryKey: "n/a",
                                                         sortKey: globalusername,
                                                         isBlocked: false,
                                                         status: "DECISION_PENDING",
                                                         createdAt: Date().SQL(),
                                                         lastEdited: Date().SQL(),
                                                         location: me[0].location,
                                                         firstName: me[0].firstName,
                                                         lastName: me[0].lastName,
                                                         email: me[0].email,
                                                         searchString: me[0].searchString,
                                                         isRead: false)
    
    
      var senderinput: InvitationInput = InvitationInput(primaryKey: globalusername+"-contact",
                                                           sortKey: "n/a",
                                                           isBlocked: false,
                                                           status: "SENT_PENDING",
                                                           createdAt: Date().SQL(),
                                                           lastEdited: Date().SQL(),
                                                           location: "n/a",
                                                           firstName: "n/a",
                                                           lastName: "n/a",
                                                           email: "n/a",
                                                           searchString: "n/a",
                                                           isRead: false)
    
    @IBAction func SendInvitation(_ sender: Any) {
        
        CreateInvitation(input: receiverinput, methodhandler: Dummy)
        
         CreateInvitation(input: senderinput, methodhandler: Dummy)
        
    }
    
    func Dummy(){
        displayToast("Invitation Sent".localized())
    }
    
    
    @IBOutlet var OptionView: UIView!
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if searchTxt.text!.count == 0 {
            
        } else {
        SearchUsers(searchString: searchTxt.text!.lowercased(), methodhandler: SetData)
        }
       }
    
    func SetData(){
        arrUsers = arrUsers.filter {
                                $0.isPublic == true
                            }
        
        
        tblView.reloadData()
    }
    
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTxt.delegate = self
        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomFriendTVC", bundle: nil), forCellReuseIdentifier: "CustomFriendTVC")
         displaySubViewtoParentView(self.view, subview: OptionView)
        OptionView.isHidden = true
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToSearch(_ sender: Any) {
        
    }
    
    @IBAction func GoBack(_ sender: Any) {
        OptionView.isHidden = false
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


extension AddFriendsVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard indexPath.row < arrUsers.count else {
            return UITableViewCell()
        }
        
        let cell : CustomFriendTVC = tblView.dequeueReusableCell(withIdentifier: "CustomFriendTVC") as! CustomFriendTVC
        
        let finaldata: user = arrUsers[indexPath.row]
        let username = finaldata.primaryKey
        let tempstr: String = username + "-profile.jpg"

        let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: username + "/" + tempstr, height: Int(cell.imgBtn.frame.height), width: Int(cell.imgBtn.frame.width))
                    
        cell.imgBtn.setProfileImage(url: profilePicMainurl, profilename: username)
        
        cell.nameLbl.text = finaldata.firstName
        cell.statusLbl.text = " "
        
    
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard indexPath.row < arrUsers.count else {
                  return               }
       
        let finaldata: user = arrUsers[indexPath.row]

        if finaldata.primaryKey == globalusername {
            displayToast("You can't send yourself an invitation!")
            OptionView.isHidden = true
        } else {
        
            
            receiverinput.primaryKey = finaldata.primaryKey+"-contact"
            senderinput.sortKey = finaldata.primaryKey
            senderinput.location = finaldata.location
            senderinput.firstName = finaldata.firstName
            senderinput.lastName = finaldata.lastName
            senderinput.email = finaldata.email
            senderinput.searchString = finaldata.searchString
        OptionView.isHidden = false
        NameLbl.text = finaldata.firstName
        let username = finaldata.primaryKey
        let tempstr: String = username + "-profile.jpg"
        let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: username + "/" + tempstr, height: Int(imgBtn.frame.height), width: Int(imgBtn.frame.width))
        imgBtn.setProfileImage(url: profilePicMainurl, profilename: username)
        }
    }
}
