//
//  MyVaultVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class MyVaultVC: UIViewController {

    @IBOutlet weak var receivedCV: UICollectionView!
    @IBOutlet weak var sentCV: UICollectionView!
    @IBOutlet weak var calendarTbl: UITableView!
    @IBOutlet weak var constraintHeightCalendarTbl: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        receivedCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        sentCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
        calendarTbl.register(UINib.init(nibName: "CustomCalendarTVC", bundle: nil), forCellReuseIdentifier: "CustomCalendarTVC")
        constraintHeightCalendarTbl.constant = 60 * 2
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToCreateEvent(_ sender: Any) {
        let vc : AddVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AddVaultVC") as! AddVaultVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToSeeAllReceived(_ sender: Any) {
        let vc : AllVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AllVaultVC") as! AllVaultVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToSeeAllSent(_ sender: Any) {
        let vc : AllVaultVC = STORYBOARD.VAULT.instantiateViewController(withIdentifier: "AllVaultVC") as! AllVaultVC
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomCalendarTVC = calendarTbl.dequeueReusableCell(withIdentifier: "CustomCalendarTVC") as! CustomCalendarTVC
        
        cell.selectionStyle = .none
        return cell
    }
}

extension MyVaultVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == receivedCV {
            let cell : CustomVideoCVC = receivedCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
            cell.playBtn.isHidden = true
            cell.vaultView.isHidden = true
            if indexPath.row == 0 {
                cell.vaultView.isHidden = false
            }else{
                cell.playBtn.isHidden = false
            }
            cell.moreBtn.tag = indexPath.row
            cell.moreBtn.addTarget(self, action: #selector(clickToVaultMore(_:)), for: .touchUpInside)
            return cell
        }
        else {
            let cell : CustomVideoCVC = sentCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
            cell.playBtn.isHidden = true
            cell.vaultView.isHidden = true
            if indexPath.row == 0 {
                cell.vaultView.isHidden = false
            }else{
                cell.playBtn.isHidden = false
            }
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
