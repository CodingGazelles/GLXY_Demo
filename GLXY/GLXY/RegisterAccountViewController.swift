//
//  RegisterAccountViewController.swift
//  GLXY
//
//  Created by Tancrède on 7/7/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit




class RegisterAccountViewController: UIViewController {
    

    let store = AppStateStore.defaultStore()
    var state: AppState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("RegisterAccountViewController did load")
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}