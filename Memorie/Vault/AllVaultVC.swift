//
//  SentVaultVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class SentVaultVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var vaultCV: UICollectionView!
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        username = globalusername
        searchTxtField.delegate = self
        // Do any additional setup after loading the view.
        vaultCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        
        FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)

    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let searchText = textField.text! + string.trimmed
            
            if searchText.count > 3 {
                
                SearchMessageVaults(username: username, searchstring: searchText, methodhandler: SetDataForSentMessages)
//               arrMessages = arrMessageVaults.filter {
//               $0.searchString.lowercased().contains(searchText.lowercased())
//               }
//               vaultCV.reloadData()
            }
            else {
                   FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)
            }
            return true
        }
    
    
    var arrMessages: [messagevault] = []
    
    @IBOutlet weak var searchTxtField: TextField!
    func SetDataForSentMessages(){
        
        if searchTxtField.text!.count > 0 {
            
         arrMessages = arrSearchMessageVaults
            arrMessages = arrMessages.unique()
                vaultCV.reloadData()
        } else {
        
         arrMessages = arrMessageVaults
            arrMessages = arrMessages.unique()
         vaultCV.reloadData()
            
        }
     }
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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

extension SentVaultVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMessages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: SCREEN.WIDTH/3.6, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CustomVideoCVC = vaultCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
        
        let finaldata: messagevault = arrMessages[indexPath.row]
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
        
        if indexPath.row == arrMessages.count {
            
            if searchTxtField.text!.count > 3 {

                    if  let a = Token_arrSearchMessageVaults {
                        SearchMessageVaults(username: username, searchstring: searchTxtField.text!, methodhandler: SetDataForSentMessages)
                    }
                
                
            } else {

                    if  let a = Token_arrMessageVaults {
                            FetchMessageVaults(username: username, methodhandler: SetDataForSentMessages)
                    }
                
                
                
                
            }
            
            
            
            
            
            
            
                                     }
        
        
        return cell
    }
    
    @IBAction func clickToVaultMore(_ sender: UIButton) {
        let view : DeletePopupView = DeletePopupView().loadNib() as! DeletePopupView
        view.frame = self.view.frame
        self.view.addSubview(view)
    }
    
    @IBAction func clickToCreateEvent(_ sender: Any) {
        let vc : AddVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AddVaultVC") as! AddVaultVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

}



