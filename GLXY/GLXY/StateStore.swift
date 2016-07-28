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



protocol AppStoreSubscriber: StoreSubscriber {
    func newState(state: AppState)
}

class AppStateStore: StoreType {
    
    
    typealias State = AppState
    typealias SubscriptionType = Subscription<State>
    
    private static let stateStoreInstance = AppStateStore(reducer: AppReducer(), state: nil, middleware: [])
    static func defaultStore() -> AppStateStore {
        return stateStoreInstance
    }
    
    
//    private let store = Store<AppState>(reducer: AppReducer(), state: nil, middleware: [])
    
    var state: State! {
        didSet {
            subscriptions = subscriptions.filter { $0.subscriber != nil }
            subscriptions.forEach {
                // if a selector is available, subselect the relevant state
                // otherwise pass the entire state to the subscriber
                $0.subscriber?._newState($0.selector?(state) ?? state)
            }
        }
    }
    
    var dispatchFunction: DispatchFunction!
    
    private var reducer: AnyReducer
    
    var subscriptions: [SubscriptionType] = []
    
    private var isDispatching = false
    
    required convenience init(reducer: AnyReducer, state: AppStateStore.State?) {
        self.init(reducer: reducer, state: state, middleware: [])
    }
    
    required init(reducer: AnyReducer, state: AppStateStore.State?, middleware: [Middleware]) {
        self.reducer = reducer
        
        // Wrap the dispatch function with all middlewares
        self.dispatchFunction = middleware
            .reverse()
            .reduce({ [unowned self] action in self._defaultDispatch(action) }) {
                [weak self] dispatchFunction, middleware in
                let getState = { self?.state }
                return middleware(self?.dispatch, getState)(dispatchFunction)
        }
        
        
        if let state = state {
            self.state = state
        } else {
            dispatch( AppInitAction())
        }
    }
    
    
    private func _isNewSubscriber(subscriber: AnyStoreSubscriber) -> Bool {
        if subscriptions.contains({ $0.subscriber === subscriber }) {
            return false
        }
        
        return true
    }
    
    
    func subscribe<S: StoreSubscriber
        where S.StoreSubscriberStateType == State>(subscriber: S) {

        subscribe(subscriber, selector: nil)
        
    }
    
    
    func subscribe<SelectedState, S: StoreSubscriber
        where S.StoreSubscriberStateType == SelectedState>
        (subscriber: S, selector: ((State) -> SelectedState)?)
    {

        if !_isNewSubscriber(subscriber) { return }
        
        subscriptions.append(Subscription(subscriber: subscriber, selector: selector))
        
        if let state = self.state {
            subscriber._newState(selector?(state) ?? state)
        }
        
    }
    
    
    func unsubscribe(subscriber: AnyStoreSubscriber) {
        if let index = subscriptions.indexOf({ return $0.subscriber === subscriber }) {
            subscriptions.removeAtIndex(index)
        }
    }
    
    func _defaultDispatch(action: Action) -> Any {
        if isDispatching {
            // Use Obj-C exception since throwing of exceptions can be verified through tests
            NSException.raise(
                "ReSwift:IllegalDispatchFromReducer",
                format: "Reducers may not dispatch actions.",
                arguments: getVaList(["nil"]))
        }
        
        isDispatching = true
        let newState = reducer._handleAction(action, state: state) as! State
        isDispatching = false
        
        state = newState
        
        return action
    }
    
    
    func dispatch(action: Action) -> Any {
        fatalError("Func not implemented")
    }
    
    
    func dispatch(action: Action) -> Future<Any,AppError> {
        
        AppLogger.debug("Dispatching action: \(action)")
        
        let promise = Promise<Any, AppError>()
        
        Queue.main.context {
            
            let result = self.dispatchFunction(action)
            promise.success(result)
            
        }
        
        return promise.future
    }
    
    
    func dispatch(actionCreator: ActionCreator) -> Any {
        fatalError("Func not implemented")
    }
    
    
    func dispatch( actionCreator: ActionCreator) -> Future<Any, AppError> {
        
        AppLogger.debug("Dispatching action creator: \(actionCreator)")
        
        let promise = Promise<Any, AppError>()
        
        Queue.main.context {
            
            let action = actionCreator(state: self.state, store: self)
            
            if let action = action {
                
                self.dispatch(action)
                    .onSuccess{ result in
                        promise.success( result)
                    }
                    .onFailure{ error in
                        promise.failure( error)
                    }
                
            } else {
            
                let error = AppError.NilActionCreatorReturn(actionCreator: actionCreator)
                AppLogger.error("Error occurred while executing ActionCreator \(actionCreator)", error: error)
                
                promise.failure(error)
                
            }
            
        }
        
        return promise.future
    }
    
    
    func dispatch(asyncActionCreatorProvider: AsyncActionCreator) {
        dispatch(asyncActionCreatorProvider, callback: nil)
    }

    
    func dispatch(actionCreatorProvider: AsyncActionCreator, callback: DispatchCallback?) {
        actionCreatorProvider(state: state, store: self) { actionProvider in
            let action = actionProvider(state: self.state, store: self)
            
            if let action = action {
                self.dispatch(action)
                callback?(self.state)
            }
        }
    }
    
    
    func initState() {
        AppLogger.info("Initializing state")
        
        
//        dispatch( MxSetPropertiesAction(properties: MxPropertiesState.readDefaultProperties()))
        
    }
    
    
    typealias DispatchCallback = (AppState) -> Void
    
    typealias ActionCreator = (state: AppState, store: AppStateStore) -> Action?
    
    typealias AsyncActionCreator = (
        state: AppState,
        store: AppStateStore,
        actionCreatorCallback: (ActionCreator) -> Void
        ) -> Void
    
    
}


extension ReSwiftInit {
    init(){}
}

