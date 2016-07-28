//
//  Error.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation



enum AppError: ErrorType, Loggable {
    case NilActionCreatorReturn( actionCreator: AppStateStore.ActionCreator)

}