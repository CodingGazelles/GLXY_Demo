//
//  HotOrNotViewController.swift
//  GLXY
//
//  Created by Tancrède on 8/1/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit

import ReSwift


class HotOrNotViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userLocation: UILabel!
    @IBOutlet weak var isOnline: UIImageView!
    
    
    let store = AppStateStore.defaultStore()
    var state: AppState!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("HotOrNotViewController did load")
        
        state = store.state
        
        updateUI()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


extension HotOrNotViewController: StoreSubscriber {
    
    
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        
        store.subscribe(self)
    }
    
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        
        store.unsubscribe(self)
    }
    
    func newState(state: AppState) {
        AppLogger.debug("New State received by HotOrNotViewController: \(state)")
        
        // UPdate UI
        updateUI()
        
    }
    
}


extension HotOrNotViewController {
    
    func updateUI(){
        
        let user = state.hotOrNotState.userList[ state.hotOrNotState.index]
        
        userName.text = user.name
        userLocation.text = "\(user.city), \(user.state)"
        isOnline.image = user.isOnline ? UIImage.init(named: "Online") : UIImage.init(named: "OnlineNot")
        
        self.view.setNeedsDisplay()
    
    }
    
}
