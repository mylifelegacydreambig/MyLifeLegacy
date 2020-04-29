//
//  SearchMyLegacyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class SearchMyLegacyVC: UIViewController {

    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.register(UINib.init(nibName: "CustomLegacyTVC", bundle: nil), forCellReuseIdentifier: "CustomLegacyTVC")
        tblView.tableHeaderView = headerView
        tblView.reloadData()
    }
    
    //MARK:- Button click event
    @IBAction func clickToSelectYear(_ sender: Any) {
    
    }
    
    @IBAction func clickToSelectCategory(_ sender: Any) {
    
    }
    
    @IBAction func clickToSortBy(_ sender: Any) {
        
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


extension SearchMyLegacyVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
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
