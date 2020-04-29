//
//  MyLegacyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class MyLegacyVC: UIViewController {

    @IBOutlet var headerView: View!
    @IBOutlet weak var tblView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomLegacyTVC", bundle: nil), forCellReuseIdentifier: "CustomLegacyTVC")
        tblView.tableHeaderView = headerView
        tblView.reloadData()
    }
    

    @IBAction func clickToAdd(_ sender: Any) {
        let vc : AddLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "AddLegacyVC") as! AddLegacyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToSearch(_ sender: Any) {
        let vc : SearchMyLegacyVC = STORYBOARD.HOME.instantiateViewController(withIdentifier: "SearchMyLegacyVC") as! SearchMyLegacyVC
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

extension MyLegacyVC : UITableViewDelegate, UITableViewDataSource {
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
