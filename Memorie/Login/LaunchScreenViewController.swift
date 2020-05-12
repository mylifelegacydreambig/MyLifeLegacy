//
//  LaunchScreen.swift
//  Bentolingo iOS V2.0
//
//  Created by Abhi Chakrabarti on 8/19/18.
//  Copyright © 2018 Bentolingo. All rights reserved.
//

import Foundation
import UIKit



class launchscreenviewcontroller: UIViewController {

    
   

     var mainView: UIStoryboard!
    
    @IBAction func buttonclicked(_ sender: Any) {
       
        mainView = UIStoryboard(name: "NewMain", bundle: nil)
        let viewcontroller : UIViewController = mainView.instantiateViewController(withIdentifier: "languagemenuID") as UIViewController
        self.present(viewcontroller, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        
       
       
    }
    
    
}
