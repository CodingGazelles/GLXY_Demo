//
//  XYWink.swift
//  GLXY
//
//  Created by Tancrède on 7/20/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import UIKit



// MARK: - UI State objects

protocol XYObjectType: Loggable {}



class XYWink: XYObjectType {
    
    var winker: XYUserProfile!
    var date: NSDate!
    
}

class XYHot: XYObjectType {
    
    var hotter: XYUserProfile!
    var date: NSDate!
    
}

class XYUserProfile: XYObjectType {
    
    var profilePhoto: UIImage?
    var coverPhoto: UIImage?
    
    var name: String!
    
    var country: String!
    var state: String!
    var city: String!
    
    var milesAway: Int!
    
    var maritalStatus: MaritalStatus!
    var sex: Sex!
    var birthday: NSDate!
    
    var isOnline = false
    
    var likes: Sex!
    
    var presentation: String!
    
//    var receivedXYHots = [XYHot]()
//    var receivedXYWinks = [XYWink]()
    
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

enum Sex: Hashable, Equatable {

    case Female
    case Male
    case Other( String)
    
    func toString() -> String {
        
        switch self {
            
        case .Female:
            return "Female"
            
        case .Male:
            return "Male"
            
        case let .Other( userCode):
            return userCode
        }
        
    }
    
    var hashValue: Int {
        return toString().hashValue
    }
}

func ==(lhs: Sex, rhs: Sex) -> Bool{
    
    switch (lhs, rhs) {
        
    case ( .Female, .Female):
        return true
        
    case ( .Male, .Male):
        return true
        
    case ( let .Other( lhsCode), let .Other( rhsCode)):
        return lhsCode == rhsCode
        
    default:
        return false
    }
}


   

    
    func timeTillNow( date: NSDate) -> (Int, String) {
        
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
    



