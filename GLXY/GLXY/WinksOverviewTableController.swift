//
//  WinksOverviewTableController.swift
//  GLXY
//
//  Created by Tancrède on 7/20/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit

import ReSwift



class WinksOverviewTableController: UITableViewController {
    
    let store = AppStateStore.defaultStore()
    var state: AppState?
    
    let cellIdentifier = "WinkTableCellView"
    var cellViewNib: UINib!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("WinksOverviewTableController did load")
        
        state = store.state
        
        cellViewNib = UINib.init(nibName: "WinkTableCellView", bundle: nil)
        tableView.registerNib( cellViewNib, forCellReuseIdentifier: cellIdentifier)
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 89
        tableView.rowHeight = 89
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return state?.winksOverviewState.winks.count ?? 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier( cellIdentifier, forIndexPath: indexPath) as! WinkTableCellView
        
        if let item = state?.winksOverviewState.winks[indexPath.row]{
            
            let winker = item.winker
            
            cell.winkerName?.text = winker.name
            cell.winkerProfilePhoto?.image = winker.profilePhoto
            cell.winkerInfo.text = "\(winker.city), \(winker.sex.toString()) (\(winker.age()))"
            cell.winkerMessage.text = "\(winker.name) sent you a Wink!"
            
            let time = item.timeTillNow()
            cell.timeTillNow?.text = String( time.0) + time.1
            
        }
            
        return cell
        
    }
    
    
}


/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Extension that enable the controller to subscribe to the UIState and react to its changes
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */
extension WinksOverviewTableController: AppStoreSubscriber {
    
    
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        
        store.subscribe(self)
    }
    
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        
        store.unsubscribe(self)
    }
    
    func newState(state: AppState) {
        AppLogger.debug("New State received by LoginViewController: \(state)")
        
        self.state = state
        // UPdate UI
        
        
    }
    
}

