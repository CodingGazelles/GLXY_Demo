//
//  Reducer.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift
import UIKit



/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 The Reducer is in charge of processing all the actions and modifying the UIState accordingly
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */

struct AppReducer: Reducer {
    
    func handleAction( action: Action, state: AppState?) -> AppState {
        
        var state = state ?? AppState()
        
        
        
        guard action is AppAction else {
            
            AppLogger.error( "Reducer received an unidentified action. Unable to treat it. \(action)", error: nil)
            
            return state
        }
        
        
        
//        let action = action as! AppAction
        
        switch action {
            
        
//        // MARK: StateActions
//        case _ as Action1:
//            AppLogger.debug("Nothing")
//            
//            
//        // MARK: Mailbox List Actions
//        case _ as Action2:
//            AppLogger.debug("Nothing")
//
//            
            
            
        case _ as AppInitAction:
            
            state = initialState()
            

        // MARK: Unknown actions
        default:
            AppLogger.error( "Reducer received an unidentified action. Unable to treat it. \(action)", error: nil)
            
        }
    
        return state
    }
    
}