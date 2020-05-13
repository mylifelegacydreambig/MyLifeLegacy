//
//  MyVaultVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//


import UIKit
import Gallery
import SVProgressHUD
import Lightbox
import AVFoundation
import AVKit
import DropDown

class MyVaultVC: UIViewController,LightboxControllerPageDelegate, LightboxControllerDismissalDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var eventTxtField: UITextField!
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == eventTxtField {
                
            if let text = textField.text {
                calendarevent.eventDescription = textField.text
            }
            
        }
    }
   
    var calendarevent: CalendarInput = CalendarInput(primaryKey: globalusername+"-event", sortKey: Date().SQL(), eventDate: "n/a", eventDescription: "n/a")
    
     @IBAction func DatePickerChanged(_ sender: Any) {
         
         let date = datePicker.date
         let calender = Calendar.current
        let components = calender.dateComponents([.month,.day], from: date)
    
         var arr: [String] = []
         
       
         if let month = components.month{
                    arr.append(String(month))
                  }
         
         if let day = components.day{
                         arr.append(String(day))
                       }
    
   
        
        calendarevent.eventDate = arr.joined(separator: "-")
       
         
     }
     
    @IBOutlet var DateView: UIView!
    @IBOutlet weak var datePicker: UIDatePicker!
     @IBAction func hideDateView(_ sender: Any) {
          DateView.isHidden = true
     }
     
     
     @IBAction func clickToPickDate(_ sender: Any) {
       calendarevent = CalendarInput(primaryKey: globalusername+"-event", sortKey: Date().SQL(), eventDate: "n/a", eventDescription: "n/a")
        
        let newcalendar = Calendar.current
        let components = newcalendar.dateComponents([.month,.day], from: Date())
          var calendar = Calendar(identifier: .gregorian)
        
        if let month = components.month {
            
            
            if let day = components.day {
                let components = DateComponents(year: 2020, month: month, day: day)
                    datePicker.date = calendar.date(from: components)!
            }
        }
        
       
        
        
        DateView.isHidden = false
        eventTxtField.text = ""
        eventTxtField.placeholder = "Eg: Dad's Birthday"
        
        
     }
    
    
    
func lightboxControllerWillDismiss(_ controller: LightboxController) {
}


func lightboxController(_ controller: LightboxController, didMoveToPage page: Int) {
}

    
    
    @IBOutlet weak var nameLabel: Label!
    var username: String!
    func SetLabels(){
           nameLabel.text = currentuser.firstName
       }
       
     func downloadprofileimage() {
         let senderimage = username
                               let tempstr: String = senderimage! + "-profile.jpg"
        let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr
                               
                               let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: senderimage! + "/" + tempstr, height: Int(imgBtn.frame.height), width: Int(imgBtn.frame.width))
     
              
                imgBtn.setUserProfileImage(url: profilePicMainurl, profilename: senderimage!)
       

              UIView.animate(withDuration: 1.0, animations: { [weak view] in
                                     self.imgBtn.alpha = 1
                                             })
    
     }
    
        func downloadcoverimage() {
            CoverImage.image = UIImage(named:"cover")
            CoverImage.contentMode = .scaleAspectFill
             let senderimage = username
                                         
           let tempstr: String = senderimage! + "-cover.jpg"
           let imagename = API.CLOUDFRONT_URL + "users/" + senderimage! + "/" + tempstr

            
            
           let profilePicMainurl = AppDelegate().sharedDelegate().ImageURL(folder: "users", key: (senderimage! + "/" + tempstr).escaped(), height: Int(CoverImage.frame.height), width: Int(CoverImage.frame.width))

            
            CoverImage.setCover(url: profilePicMainurl)
         }
    
    @IBOutlet weak var imgBtn: Button!
     @IBOutlet weak var CoverImage: ImageView!

    @IBOutlet weak var receivedCV: UICollectionView!
    @IBOutlet weak var sentCV: UICollectionView!
    @IBOutlet weak var calendarTbl: UITableView!
    @IBOutlet weak var constraintHeightCalendarTbl: NSLayoutConstraint!
    
    @IBAction func SaveTapped(_ sender: Any) {
        
        guard calendarevent.eventDate != "n/a" && calendarevent.eventDescription != "n/a" else {
            
            displayToast("Please make sure you have entered a valid description and date.")
            return
        }
        
        
                    
        if eventTxtField.text!.count > 0 {
        calendarevent.eventDescription = eventTxtField.text
                }
        
        
          if let index = arrCalendars.index(where: { $0.sortKey == calendarevent.sortKey }) {
                 
              let input: DeleteUserInput = DeleteUserInput(primaryKey: globalusername+"-event", sortKey: calendarevent.sortKey)
            
              arrCalendars.remove(at: index)
                 
                                               }
        
        
        
        
        arrCalendars.append(calendar(primaryKey: calendarevent.primaryKey!, sortKey: calendarevent.sortKey!, eventDate: calendarevent.eventDate!, eventDescription: calendarevent.eventDescription!))
        
         SetTableConstraints()
        
        UpdateCalendarEvent(input: calendarevent, methodhandler: SetTableConstraints)
                
          
        DateView.isHidden = true
        
        
    }
    
    func SetTableConstraints(){
        
        arrCalendars = arrCalendars.unique()
        arrCalendars = arrCalendars.sorted {$0.eventDate.localizedStandardCompare($1.eventDate) == .orderedAscending}
        
        calendarTbl.reloadData()
        
        constraintHeightCalendarTbl.constant = CGFloat(60 * arrCalendars.count)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        calendarTbl.reloadData()
        sentCV.reloadData()
        receivedCV.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
         username = globalusername
      downloadcoverimage()
                  downloadprofileimage()
        // Do any additional setup after loading the view.
        receivedCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        sentCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        calendarTbl.register(UINib.init(nibName: "CustomCalendarTVC", bundle: nil), forCellReuseIdentifier: "CustomCalendarTVC")
        FetchReceivedMessageVaults(username: username, methodhandler: SetDataForReceivedMessages)
        FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)
        FetchCalendars(username: username, methodhandler: SetTableConstraints)
        
        eventTxtField.delegate = self
              displaySubViewtoParentView(self.view, subview: DateView)
                  DateView.isHidden = true
             
                currentuser = me[0]
              SetLabels()
            
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

    
    @IBAction func clickToSeeAllReceived(_ sender: Any) {
        let vc : SentVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "SentVaultVC") as! SentVaultVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToSeeAllSent(_ sender: Any) {
        let vc : SentVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "SentVaultVC") as! SentVaultVC
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

extension MyVaultVC : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView,
                     trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
      {
          self.view.endEditing(true)
          guard indexPath.row < arrCalendars.count else {
                      return UISwipeActionsConfiguration()
                      }
          
          let finaldata: calendar = arrCalendars[indexPath.row]
                
         
          
          let modifyAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
              print("Update action ...")
                
            if let index = arrCalendars.index(where: { $0.sortKey == finaldata.sortKey }) {
                   
                let input: DeleteUserInput = DeleteUserInput(primaryKey: globalusername+"-event", sortKey: finaldata.sortKey)
                
                DeleteCalendarEvent(input: input, methodhandler: self.calendarTbl.reloadData)
                
                arrCalendars.remove(at: index)
                    
                                                 }
                  
                  DispatchQueue.main.async{
                      displayToast("The event was deleted")
                    self.calendarTbl.reloadData()
                  }
              
              
              
              success(true)
          })
          modifyAction.image = UIImage(named: "trash")
          modifyAction.backgroundColor = .systemRed
      
          return UISwipeActionsConfiguration(actions: [modifyAction])
      }
      
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCalendars.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard indexPath.row < arrCalendars.count else {
            return UITableViewCell()
        }
        
        
        let cell : CustomCalendarTVC = calendarTbl.dequeueReusableCell(withIdentifier: "CustomCalendarTVC") as! CustomCalendarTVC
        
        let finaldata: calendar = arrCalendars[indexPath.row]
        
        cell.eventLabel.text = finaldata.eventDescription
        
        var calendar = Calendar(identifier: .gregorian)
        let arr: [String] = finaldata.eventDate.components(separatedBy: "-")
        
        if let month = Int(arr[0]) {
            
            if let day = Int(arr[1]){
                                    
                cell.MonthLabel.text = month.getMonth()
                    cell.DayLabel.text = String(day)
                
                
            }
        } else {
            
            cell.MonthLabel.text = " "
            cell.DayLabel.text = " "
        }
        
        

        cell.selectionStyle = .none
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                let finaldata: calendar = arrCalendars[indexPath.row]
                
        eventTxtField.text = finaldata.eventDescription
       
        calendarevent.sortKey = finaldata.sortKey
        calendarevent.eventDescription = finaldata.eventDescription
        calendarevent.eventDate = finaldata.eventDate
        
        
        var calendar = Calendar(identifier: .gregorian)
        let arr: [String] = (eventTxtField.text?.components(separatedBy: "-"))!
        
        if let month = Int(arr[0]) {
            
            if let day = Int(arr[1]){
                
                    
                    
                let components = DateComponents(year: 2020, month: month, day: day)
                        
                    datePicker.date = calendar.date(from: components)!
                
                
            }
        }
        
        
        
        
        DateView.isHidden = false
        
        
    
        
        
        
      
    }
}

extension MyVaultVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func SetDataForReceivedMessages(){
        
        
        arrReceivedMessageVaults = arrReceivedMessageVaults.filter {
                $0.isLocked == false
                }
        
        receivedCV.reloadData()
    }
    
    func SetDataForSentMessages(){
         
         sentCV.reloadData()
     }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == receivedCV {
            return arrReceivedMessageVaults.count
        } else{
            
            return arrMessageVaults.count

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == receivedCV {
          
            let cell : CustomVideoCVC = receivedCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
            
            let finaldata: messagevault = arrReceivedMessageVaults[indexPath.row]
                      
            cell.playBtn.isHidden = true
            cell.vaultView.isHidden = true
            
           if Int(finaldata.canBeOpenedOn)! > Int(Date().timeIntervalSince1970) {
                 cell.vaultView.isHidden = false
            cell.AccessLabel.text = "Can be opened by you on " + TimeExtractorForChat(timestamp: finaldata.canBeOpenedOn)

            } else {
                 cell.playBtn.isHidden = false
            }
            
            cell.nameLbl.text = finaldata.postedBy
            cell.moreBtn.tag = indexPath.row
            cell.moreBtn.addTarget(self, action: #selector(clickToVaultMore(_:)), for: .touchUpInside)
            return cell
        }
        else {
            let cell : CustomVideoCVC = sentCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
            
            let finaldata: messagevault = arrMessageVaults[indexPath.row]
            cell.playBtn.isHidden = true
            cell.vaultView.isHidden = true
            if Int(finaldata.canBeOpenedOn)! > Int(Date().timeIntervalSince1970) {
                         cell.vaultView.isHidden = false
                    cell.AccessLabel.text = "Can be accessed by user on " + TimeExtractorForChat(timestamp: finaldata.canBeOpenedOn)
                    } else {
                         cell.playBtn.isHidden = false
                    }
                    
             cell.nameLbl.text = finaldata.receivedBy
            cell.moreBtn.tag = indexPath.row
            cell.moreBtn.addTarget(self, action: #selector(clickToVaultMore(_:)), for: .touchUpInside)
            return cell
        }
    }
    
    @IBAction func clickToVaultMore(_ sender: UIButton) {
        
        let view : DeletePopupView = DeletePopupView().loadNib() as! DeletePopupView
        view.frame = self.view.frame
        self.view.addSubview(view)
    }
}



extension Int{
    
    func getMonth() -> String {
        
        switch self {

                  case 1:
                    return "Jan".localized()

                case 2:
                  return "Feb".localized()
            
            
            case 3:
                            return "Mar".localized()

                        case 4:
                          return "Apr".localized()
            
            
            case 5:
                            return "May".localized()

                        case 6:
                          return "Jun".localized()
            
            case 7:
                            return "Jul".localized()

                        case 8:
                          return "Aug".localized()
                    
                    
                    case 9:
                                    return "Sep".localized()

                                case 10:
                                  return "Oct".localized()
                    
                    
                    case 11:
                                    return "Nov".localized()

                                case 12:
                                  return "Dec".localized()
            

                  default:
                    return String(self)
        
    }
    
}

}
