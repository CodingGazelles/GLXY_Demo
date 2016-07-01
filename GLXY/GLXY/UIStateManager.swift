//
//  UIStateManager.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import ReSwift
import BrightFutures



class UIStateManager {
    
    private static let appState = UIStateManager()
    static func defaultState() -> UIStateManager {
        return appState
    }
    
    
    let store = Store<UIState>(reducer: AppReducer(), state: nil, middleware: [])
    
    var state: UIState {
        get {
            return store.state
        }
    }
    
    
    func dispatch(action: Action) -> Future<Any,AppError> {
        
        AppLogger.debug("Dispatching action: \(action)")
        
        let promise = Promise<Any, AppError>()
        
        Queue.main.context {
            
            let result = self.store.dispatch(action)
            promise.success(result)
            
        }
        
        return promise.future
    }
    
    
    func dispatch(mxActionCreator: (state: UIState) -> UIAction?) -> Future<Any, AppError> {
        
        AppLogger.debug("Dispatching action creator: \(mxActionCreator)")
        
        let promise = Promise<Any, AppError>()
        
        Queue.main.context {
            
            let reActionCreator = {
                (state: UIState, store: Store<UIState>) -> Action? in
                
                let _state = state
                let _action = mxActionCreator(state: _state)
                
                return _action as? Action
            }
            
            let result = self.store.dispatch(reActionCreator)
            promise.success( result)
            
        }
        
        return promise.future
    }
    
    
    func initState() {
        AppLogger.info("Initializing state")
        
        
//        dispatch( MxSetPropertiesAction(properties: MxPropertiesState.readDefaultProperties()))
        
    }
    
    
}