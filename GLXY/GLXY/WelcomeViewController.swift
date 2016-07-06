//
//  ViewController.swift
//  GLXY
//
//  Created by Tancrède on 6/29/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit

import ReSwift



class WelcomeViewController: UIViewController {
    
    let state = UIStateManager.defaultState()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("WelcomeViewController did load")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signInButtonClicked(sender: AnyObject) {
        AppLogger.debug("signInButtonClicked")
    }

    @IBAction func createAccountButtonClicked(sender: AnyObject) {
        AppLogger.debug("createAccountButtonClicked")
    }
}


/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Extension that enable the controller to subscribe to the UIState and react to its changes
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */
extension WelcomeViewController: StoreSubscriber {
    
    
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        
        state.store.subscribe(self)
    }
    
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        
        state.store.unsubscribe(self)
    }
    
    func newState(state: UIState) {
        AppLogger.debug("New State received by WelcomeViewController: \(state)")
        
        // UPdate UI
        
    }
    
}

