//
//  Subscription.swift
//  GLXY
//
//  Created by Tancrède on 7/22/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//



//
//  SubscriberWrapper.swift
//  ReSwift
//
//  Created by Virgilio Favero Neto on 4/02/2016.
//  Copyright © 2016 Benjamin Encz. All rights reserved.
//

import Foundation

import ReSwift



struct Subscription<State: StateType> {
    private(set) weak var subscriber: AnyStoreSubscriber? = nil
    let selector: ((State) -> Any)?
}