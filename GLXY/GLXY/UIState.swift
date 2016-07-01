//
//  UIState.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift



// MARK: - StateType protocol

/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Protocol used to mark the structures used to represent the UI State
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */

protocol StateType : ReSwift.StateType, Loggable {}


// MARK: - State UI

/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 This structure holds the current state of the UI
 Every state of every elements of the UI should be represented here
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */

struct UIState: StateType {
    
    
    
}