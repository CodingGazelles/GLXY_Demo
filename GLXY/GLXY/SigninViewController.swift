//
//  LoginController.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit

import ReSwift



class SigninViewController: UIViewController {
    
    let store = AppStateStore.defaultStore()
    var state: AppState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("SigninViewController did load")
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}



/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Extension that enable the controller to subscribe to the UIState and react to its changes
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */
extension SigninViewController: StoreSubscriber {
    
    
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        
        store.subscribe(self)
    }
    
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        
        store.unsubscribe(self)
    }
    
    func newState(state: AppState) {
        AppLogger.debug("New State received by SigninViewController: \(state)")
        
        // UPdate UI
        
    }
    
}