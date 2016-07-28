//
//  UIAction.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift



/*
 
 Implementation of the Unidirectional Data Flow design pattern
 
 Protocol used to mark the actions sent to modify the UIState
 
 See https://github.com/ReSwift/ReSwift for more explication
 
 */

protocol AppAction: ReSwift.Action, Loggable {}


struct AppInitAction: AppAction {}