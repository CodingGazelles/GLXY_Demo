//
//  ChatInboxViewController.swift
//  GLXY
//
//  Created by Tancrède on 8/24/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



class InboxViewController: UIViewController {
    
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("ChatInboxViewController did load")
        
        state = store.state
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}