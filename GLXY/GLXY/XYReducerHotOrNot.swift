//
//  HotOrNotReducer.swift
//  GLXY
//
//  Created by Tancrède on 8/12/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift
import UIKit



protocol XYActionHotOrNot: XYAction {}

struct XYActionHotOrNotNext: XYActionHotOrNot {}
struct XYActionHotOrNotYes: XYActionHotOrNot {}
struct XYActionHotOrNotNo: XYActionHotOrNot {}

struct XYReducerHotOrNot {
    
    func handleAction( action action: XYActionHotOrNot, var state: XYAppState) -> XYAppState {
        
        switch action {
            
        case _ as XYActionHotOrNotNext:
            state.hotOrNotState.index += 1
            
            if( state.hotOrNotState.index >= state.hotOrNotState.userList.count){
                state.hotOrNotState.index = 0
            }
            
            
        // MARK: Unknown actions
        default:
            AppLogger.error( "XYHotOrNotReducer received an unidentified action. Unable to treat it. \(action)", error: nil)
        }
        
        return state
    }
    
}