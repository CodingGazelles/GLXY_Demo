//
//  CreateAccountViewController.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit

import ReSwift



class SignupViewController: UIViewController {
    
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("SignupViewController did load")
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func unwindToSignupView(sender: UIStoryboardSegue){
        AppLogger.debug("backButtonClicked")
    }
    
    
}


/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Extension that enable the controller to subscribe to the UIState and react to its changes
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */
extension SignupViewController: StoreSubscriber {
    
    
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        
        store.subscribe(self)
    }
    
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        
        store.unsubscribe(self)
    }
    
    func newState(state: XYAppState) {
        AppLogger.debug("New State received by CreateAccountViewController: \(state)")
        
        // UPdate UI
        
    }
    
}