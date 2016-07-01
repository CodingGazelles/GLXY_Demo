//
//  Reducer.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift



/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 The Reducer is in charge of processing all the actions and modifying the UIState accordingly
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */

struct AppReducer: Reducer {
    
    func handleAction( action: Action, state: UIState?) -> UIState {
        
        let state = state ?? UIState()
        
        
        
        guard action is UIAction else {
            
            AppLogger.error( "Reducer received an unidentified action. Unable to treat it. \(action)", error: nil)
            
            return state
        }
        
        
        
//        let uiAction = action as! UIAction
        
//        switch uiAction {
//            
//        
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
//            
//            
//
//            
//
//        // MARK: Unknown actions
//        default:
//            
//            AppLogger.error( "Reducer received an unidentified action. Unable to treat it. \(action)", error: nil)
//            
//        }
        
        return state
    }
    
}