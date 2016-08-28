//
//  UIState.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift



// MARK: - App State

/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 This structure holds the current state of the UI
 Every state of every elements of the UI should be represented here
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */

struct XYAppState: StateType, Loggable  {
    
    var user: XYUserProfile!
//    var userIsOnline = false
    
    var winksOverviewState = WinksOverviewState()
    var hotOrNotState = HotOrNotState()
    var usersNearbyState = UsersNearbyState()
    
}

struct UsersNearbyState {
    var userList = [XYUserProfile]()
}

struct WinksOverviewState {
    var winks = [XYWink]()
}

struct HotOrNotState {
    
    var userList = [XYUserProfile]()
    var index = 0
    
    var hotList = [XYUserProfile]()
    var notList = [XYUserProfile]()
    
    
}