//
//  InitialState.swift
//  GLXY
//
//  Created by Tancrède on 7/28/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import UIKit



func initialState() -> XYAppState {
    
    var state = XYAppState()
    
    
    state.winksOverviewState.winks = InitialState.winks
    state.hotOrNotState.userList = InitialState.users
    
    
    return state
    
}


class InitialState {
    
    private static var _winks: [XYWink]?
    private static var _users: [XYUser]?
    
    static var winks:[XYWink] {
        get {
            
            if _winks == nil {
                _winks = initWinks()
            }
            
            return _winks!
            
        }
    }
    
    
    static var users:[XYUser] {
        get {
            
            if _users == nil {
                _users = initXYUsers()
            }
            
            return _users!
            
        }
    }
    
}
