//
//  ProfileOverviewViewController.swift
//  GLXY
//
//  Created by Tancrède on 7/11/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



class ProfileOverviewViewController: UIViewController {
    
    
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("ProfileOverviewViewController did load")
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}