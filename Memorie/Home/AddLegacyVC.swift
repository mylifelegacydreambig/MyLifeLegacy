//
//  AddLegacyVC.swift
//  Memorie
//
//  Created by Keyur on 16/04/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import UIKit

class AddLegacyVC: UploadImageVC {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var categoryCV: UICollectionView!
    @IBOutlet weak var descTxtView: TextView!
    
    var selectedCategory = -1
    var arrCategory = ["TRAVEL", "COOKING", "MOVIE", "READING"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        categoryCV.register(UINib.init(nibName: "CustomCategoryCVC", bundle: nil), forCellWithReuseIdentifier: "CustomCategoryCVC")
    }
    
    //MARK:- Button click event
    @IBAction func clickToBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickToAddImage(_ sender: Any) {
        uploadImage()
    }
    
    @IBAction func clickToNext(_ sender: Any) {
        
    }
    
    override func selectedImage(choosenImage: UIImage) {
        imgView.image = choosenImage
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

extension AddLegacyVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size.height
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CustomCategoryCVC = categoryCV.dequeueReusableCell(withReuseIdentifier: "CustomCategoryCVC", for: indexPath) as! CustomCategoryCVC
        cell.titleLbl.text = arrCategory[indexPath.row]
        if selectedCategory == indexPath.row {
            cell.outerView.backgroundColor = PinkColor
        }else{
            cell.outerView.backgroundColor = LightBlueColor
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCategory = indexPath.row
        categoryCV.reloadData()
    }
}
