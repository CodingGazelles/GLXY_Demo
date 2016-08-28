//
//  WinksOverviewTableController.swift
//  GLXY
//
//  Created by Tancrède on 7/20/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit
import ReSwift



class WinksTableController: UITableViewController {
    
    
    //
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    
    //
    let cellIdentifier = "WinkCellView"
    var cellViewNib: UINib!
    
    
    
    
    /*
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        AppLogger.debug("WinksTableController did load")
        
        
        //
        state = store.state
        
        
        //
        cellViewNib = UINib.init(nibName: "WinkCellView", bundle: nil)
        tableView.registerNib( cellViewNib, forCellReuseIdentifier: cellIdentifier)
        
        
        //
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 89
        tableView.rowHeight = 89
        
        
    }
    
}


/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Extension that enable the controller to subscribe to the UIState and react to its changes
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */
extension WinksTableController: AppStoreSubscriber {
    
    
    
    
    /*
     */
    override func viewWillAppear( animated: Bool) {
        super.viewWillAppear( animated)
        store.subscribe(self)
    }
    
    
    
    
    /*
     */
    override func viewWillDisappear( animated: Bool) {
        super.viewWillDisappear( animated)
        store.unsubscribe(self)
    }
    
    
    
    
    /*
     */
    func newState(state: XYAppState) {
        AppLogger.debug("New State received by WinksTableController: \(state)")
        self.state = state
    }
    
}



// MARK: - conformance to UITableViewDataSource

extension WinksTableController {
    
    
    
    
    /*
    */
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return state!.winksOverviewState.winks.count
    }
    
    
    
    
    /*
     */
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier( cellIdentifier, forIndexPath: indexPath) as! WinkCellView
        
        if let item = state?.winksOverviewState.winks[indexPath.row]{
            
            let winker = item.winker
            
            cell.winkerName?.text = winker.name
            cell.winkerProfilePhoto?.image = winker.profilePhoto
            cell.winkerInfo.text = "\(winker.city), \(winker.sex.toString()) (\(winker.age()))"
            cell.winkerMessage.text = "\(winker.name) sent you a Wink!"
            
            let time = timeTillNow( item.date)
            cell.timeTillNow?.text = String( time.0) + time.1
            
        }
        
        return cell
        
    }
    
    
}

