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
    @IBOutlet weak var coverPhoto: UIImageView!
    @IBOutlet weak var sexPref: UILabel!
    @IBOutlet weak var sex: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var presentation: UILabel!
    
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    
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


// MARK: - State subscriber

extension HotOrNotViewController: StoreSubscriber {
    
    
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        
        store.subscribe(self)
    }
    
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        
        store.unsubscribe(self)
    }
    
    func newState(state: XYAppState) {
        AppLogger.debug("New State received by HotOrNotViewController: \(state)")
        
        self.state = state
        
        updateUI()
        
    }
    
}


//MARK: - Actions and Updates

extension HotOrNotViewController {
    
    
    @IBAction func nextButtonClicked(sender: UITapGestureRecognizer) {
        AppLogger.debug("nextButtonClicked")
        
        let _ = store.dispatch(XYActionHotOrNotNext())
        
    }
    
    @IBAction func yesButtonClicked(sender: UITapGestureRecognizer) {
        AppLogger.debug("yesButtonClicked")
    }
    
    @IBAction func noButtonClicked(sender: UITapGestureRecognizer) {
        AppLogger.debug("noButtonClicked")
    }
    
    
    func updateUI(){
        
        let user = state.hotOrNotState.userList[ state.hotOrNotState.index]
        
        userName.text = user.name
        userLocation.text = "\(user.city), \(user.state)"
        isOnline.image = user.isOnline ? UIImage.init(named: "Online") : UIImage.init(named: "OnlineNot")
        coverPhoto.image = user.coverPhoto
        sexPref.text = ( user.likes! == Sex.Female ) ? "Likes girls" : "Likes boys"
        sex.text = user.sex.toString()
        age.text = "\(user.age())"
        presentation.text = user.presentation
        
        self.view.setNeedsDisplay()
    
    }
    
}
