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

struct XYReducer: Reducer {
    
    typealias ReducerStateType = XYAppState
    
    let hotOrNotReducer = XYReducerHotOrNot()
    
    func handleAction(action: Action, state: ReducerStateType?) -> ReducerStateType {
        
        var state = state ?? XYAppState()
        
        guard (action is XYAction) else {
            AppLogger.error("Reducer received an action that does not conform to XYAction. Unable to treat it. \(action)")
            return state
        }
        
        return _handleAction(action: action as! XYAction, state: state)
    }
    
    func _handleAction( action action: XYAction, var state: XYAppState) -> XYAppState {
        
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
            
            
        case _ as XYInitAction:
            state = initialState()
            
        case _ as XYActionHotOrNot:
            state = hotOrNotReducer.handleAction(action: action as! XYActionHotOrNot, state: state)
            
            

        // MARK: Unknown actions
        default:
            AppLogger.error( "Reducer received an unidentified action. Unable to treat it. \(action)")
        }
    
        return state
    }
    
}