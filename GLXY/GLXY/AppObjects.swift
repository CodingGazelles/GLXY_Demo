//
//  Wink.swift
//  GLXY
//
//  Created by Tancrède on 7/20/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import UIKit



// MARK: - UI State objects

protocol AppObjectType: Loggable {}



class Wink: AppObjectType, TimeUtils {
    
    var winker: User!
    var date: NSDate!
    
}

class Hot: AppObjectType, TimeUtils {
    
    var hotter: User!
    var date: NSDate!
    
}

class User: AppObjectType {
    
    var profilePhoto: UIImage?
    var name: String!
    
    var country: String!
    var state: String!
    var city: String!
    
    var maritalStatus: MaritalStatus!
    var sex: Sex!
    var birthday: NSDate!
    
    var isOnline = false
    
    var receivedHots = [Hot]()
    
    var receivedWinks = [Wink]()
    
    func age() -> Int {
        
        let calendar = NSCalendar.currentCalendar()
        let dateComponents = calendar.components([.Year]
            , fromDate: birthday
            , toDate: NSDate()
            , options: .WrapComponents)
        
        return dateComponents.year
    }
    
}

enum MaritalStatusCode: String {
    case Married
    case Separated
    case Divorced
    case Single
    case CivilUnion
    case PartnerShip
}

enum MaritalStatus {
    case System( MaritalStatusCode)
    case Other( String)
    
    init( value: String) {
        
        let systemCode = MaritalStatusCode(rawValue: value)
        
        guard systemCode != nil else {
            self = .Other(value)
            return
        }
        
        self = .System(systemCode!)
    }
    
    func toString() -> String {
        
        switch self {
            
        case let .System( systemCode):
            return systemCode.rawValue
            
        case let .Other( userCode):
            return userCode
        }
        
    }
    
    var hashValue: Int {
        return toString().hashValue
    }
}

enum SexCode: String {
    case Male
    case Female
}

enum Sex {
    case System( SexCode)
    case Other( String)
    
    init( value: String) {
        
        let systemCode = SexCode(rawValue: value)
        
        guard systemCode != nil else {
            self = .Other(value)
            return
        }
        
        self = .System(systemCode!)
    }
    
    func toString() -> String {
        
        switch self {
            
        case let .System( systemCode):
            return systemCode.rawValue
            
        case let .Other( userCode):
            return userCode
        }
        
    }
    
    var hashValue: Int {
        return toString().hashValue
    }
}


protocol TimeUtils {
    var date: NSDate! {get set}
}

    
extension TimeUtils {
    
    func timeTillNow() -> (Int, String) {
        
        let calendar = NSCalendar.currentCalendar()
        let dateComponents = calendar.components([.Year, .Month, .Day, .Hour, .Minute]
            , fromDate: date
            , toDate: NSDate()
            , options: .WrapComponents)
        
        if dateComponents.year != 0 {
            return (dateComponents.year, "y")
            
        } else if dateComponents.month != 0 {
            return ( dateComponents.month, "m")
            
        } else if dateComponents.day != 0 {
            return (dateComponents.day, "d")
            
        } else if dateComponents.hour != 0 {
            return (dateComponents.hour, "h")
            
        } else {
            return (dateComponents.minute, "mn")
        }
        
    }
    
}


