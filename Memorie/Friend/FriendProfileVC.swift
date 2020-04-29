//
//  FriendProfileVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class FriendProfileVC: UIViewController {

    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet var detailView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomLegacyTVC", bundle: nil), forCellReuseIdentifier: "CustomLegacyTVC")
        tblView.tableHeaderView = headerView
        tblView.reloadData()
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToSearch(_ sender: Any) {
        let vc : SearchMyLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "SearchMyLegacyVC") as! SearchMyLegacyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToMore(_ sender: Any) {
        displaySubViewtoParentView(self.view, subview: detailView)
    }
    
    @IBAction func clickToCloud(_ sender: Any) {
        
    }
    
    @IBAction func clickToDismissDetailView(_ sender: Any) {
        detailView.removeFromSuperview()
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

extension FriendProfileVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomLegacyTVC = tblView.dequeueReusableCell(withIdentifier: "CustomLegacyTVC") as! CustomLegacyTVC
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
