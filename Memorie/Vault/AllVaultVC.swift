//
//  AllVaultVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class AllVaultVC: UIViewController {

    @IBOutlet weak var vaultCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        vaultCV.register(UINib.init(nibName: "CustomVideoCVC", bundle: nil), forCellWithReuseIdentifier: "CustomVideoCVC")
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

extension AllVaultVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: SCREEN.WIDTH/3, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CustomVideoCVC = vaultCV.dequeueReusableCell(withReuseIdentifier: "CustomVideoCVC", for: indexPath) as! CustomVideoCVC
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
    
    @IBAction func clickToVaultMore(_ sender: UIButton) {
        let view : DeletePopupView = DeletePopupView().loadNib() as! DeletePopupView
        view.frame = self.view.frame
        self.view.addSubview(view)
    }
}
