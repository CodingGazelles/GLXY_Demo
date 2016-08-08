//
//  InitialState.swift
//  GLXY
//
//  Created by Tancrède on 7/28/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import UIKit



func initialState() -> AppState {
    
    var state = AppState()
    
    
    state.winksOverviewState.winks = InitialState.winks
    state.hotOrNotState.userList = InitialState.users
    
    
    return state
    
}


class InitialState {
    
    private static var _winks: [Wink]?
    private static var _users: [User]?
    
    static var winks:[Wink] {
        get {
            
            if _winks == nil {
                _winks = initWinks()
            }
            
            return _winks!
            
        }
    }
    
    
    static var users:[User] {
        get {
            
            if _users == nil {
                _users = initUsers()
            }
            
            return _users!
            
        }
    }
    
}
