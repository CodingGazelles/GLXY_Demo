//
//  UsersNearbyViewController.swift
//  GLXY
//
//  Created by Tancrède on 7/5/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit
import ReSwift



class UsersNearbyCollectionController: UICollectionViewController {
    
    
    //
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    
    //
    var cellIdentifier = "UsersNearbyCellView"
    var cellViewNib: UINib!
    
    
    
    /*
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        AppLogger.debug("UsersNearbyCollectionController did load")
        
        
        //
        state = store.state
        
        
        //
        collectionView!.dataSource = self
        collectionView?.delegate = self
        
        
        //
        cellViewNib = UINib.init(nibName: "UsersNearbyCellView", bundle: nil)
        collectionView!.registerNib( cellViewNib, forCellWithReuseIdentifier: cellIdentifier)
        
        
    }
    
    
    
    
    /*
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




// MARK: - State subscriber

extension UsersNearbyCollectionController: StoreSubscriber {
    
    
    
    
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
        AppLogger.debug("New State received by UsersNearbyCollectionController: \(state)")
        self.state = state
    }
    
}



// MARK: - conformance to UICollectionViewDataSource

extension UsersNearbyCollectionController {
    
    
    
    /*
     */
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    
    /*
     */
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return state.usersNearbyState.userList.count
    }
    
    
    
    
    /*
     */
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell: UsersNearbyCellView = getCell(indexPath)
        configureCell(&cell, indexPath: indexPath)
        
        return cell
    }
    
    
    
    
    /*
     */
    func getCell( indexPath: NSIndexPath) -> UsersNearbyCellView {
        return collectionView!.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath) as! UsersNearbyCellView
    }
    
    
    
    
    /*
     */
    func configureCell( inout cell: UsersNearbyCellView, indexPath: NSIndexPath) {
        if let user = state?.usersNearbyState.userList[indexPath.row]{
            
            cell.profilePhoto.image = user.profilePhoto
            cell.userNameLabel.text = user.name
            cell.onlineIcon.image = user.isOnline ? UIImage.init(named: "Online") : UIImage.init(named: "OnlineNot")
            cell.line2Label.text = "\(user.age()) - \(user.city) - \(user.sex)"
            
        }
    }
    
}



// MARK: - conformance to UICollectionViewDelegateFlowLayout

extension UsersNearbyCollectionController: UICollectionViewDelegateFlowLayout {
    
    
    
    // ratio cell width / collection view width
    var ratioCellToCollectionWidth: CGFloat {
        return 0.485
    }
    
    
    
    // ration cell height / cell width
    var rationCellHeightToWidth: CGFloat {
        return 1.09
    }
    
    
    /*
    */
    func collectionView( collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                                sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(
            width: collectionView.bounds.width * ratioCellToCollectionWidth,
            height: collectionView.bounds.width * ratioCellToCollectionWidth * rationCellHeightToWidth)
    }
    
}


