//
//  WinkList.swift
//  GLXY
//
//  Created by Tancrède on 8/3/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit




func initWinks() -> [Wink] {
    
    var winks = [Wink]()
    
    
    let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
    
    
    
    // user 0
    
    let wink0 = Wink()
    wink0.winker = InitialState.users[0]
    
    let wink0DateComponents = NSDateComponents()
    wink0DateComponents.year = 0
    wink0DateComponents.month = 0
    wink0DateComponents.day = -1
    wink0DateComponents.hour = -3
    wink0DateComponents.minute = -54
    
    let wink0Date = calendar?.dateByAddingComponents(wink0DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink0.date = wink0Date
    
    winks.append(wink0)
    
    
    // user 1
    
    let wink1 = Wink()
    wink1.winker = InitialState.users[1]
    
    let wink1DateComponents = NSDateComponents()
    wink1DateComponents.year = -4
    wink1DateComponents.month = -2
    wink1DateComponents.day = -1
    wink1DateComponents.hour = -13
    wink1DateComponents.minute = -36
    
    let wink1Date = calendar?.dateByAddingComponents(wink1DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink1.date = wink1Date
    
    winks.append(wink1)
    
    
    
    // Wink 2
    
    let wink2 = Wink()
    wink2.winker = InitialState.users[2]
    
    
    let wink2DateComponents = NSDateComponents()
    wink2DateComponents.year = 0
    wink2DateComponents.month = 0
    wink2DateComponents.day = 0
    wink2DateComponents.hour = -7
    wink2DateComponents.minute = -36
    
    let wink2Date = calendar?.dateByAddingComponents(wink2DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink2.date = wink2Date
    
    winks.append(wink2)
    
    
    
    // Wink 3
    
    let wink3 = Wink()
    wink3.winker = InitialState.users[3]
    
    let wink3DateComponents = NSDateComponents()
    wink3DateComponents.year = 0
    wink3DateComponents.month = 0
    wink3DateComponents.day = 0
    wink3DateComponents.hour = -23
    wink3DateComponents.minute = -36
    
    let wink3Date = calendar?.dateByAddingComponents(wink3DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink3.date = wink3Date
    
    winks.append(wink3)
    
    
    
    // Wink 4
    
    let wink4 = Wink()
    wink4.winker = InitialState.users[4]
    
    let wink4DateComponents = NSDateComponents()
    wink4DateComponents.year = 0
    wink4DateComponents.month = 0
    wink4DateComponents.day = 0
    wink4DateComponents.hour = -23
    wink4DateComponents.minute = -36
    
    let wink4Date = calendar?.dateByAddingComponents(wink4DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink4.date = wink4Date
    
    winks.append(wink4)
    
    
    
    // Wink 5
    
    let wink5 = Wink()
    wink5.winker = InitialState.users[5]
    
    let wink5DateComponents = NSDateComponents()
    wink5DateComponents.year = 0
    wink5DateComponents.month = 0
    wink5DateComponents.day = 0
    wink5DateComponents.hour = 0
    wink5DateComponents.minute = -36
    
    let wink5Date = calendar?.dateByAddingComponents(wink5DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink5.date = wink5Date
    
    winks.append(wink5)
    
    
    
    // Wink 6
    
    let wink6 = Wink()
    wink6.winker = InitialState.users[6]
    
    let wink6DateComponents = NSDateComponents()
    wink6DateComponents.year = 0
    wink6DateComponents.month = 0
    wink6DateComponents.day = -2
    wink6DateComponents.hour = -5
    wink6DateComponents.minute = -36
    
    let wink6Date = calendar?.dateByAddingComponents(
        wink6DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink6.date = wink6Date
    
    winks.append(wink6)
    
    
    
    // Wink 7
    
    
    let wink7 = Wink()
    wink7.winker = InitialState.users[7]
    
    let wink7DateComponents = NSDateComponents()
    wink7DateComponents.year = 0
    wink7DateComponents.month = 0
    wink7DateComponents.day = 0
    wink7DateComponents.hour = 0
    wink7DateComponents.minute = -36
    
    let wink7Date = calendar?.dateByAddingComponents(
        wink7DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink7.date = wink7Date
    
    winks.append(wink7)
    
    
    
    // Wink 8
    
    let wink8 = Wink()
    wink8.winker = InitialState.users[0]
    
    let wink8DateComponents = NSDateComponents()
    wink8DateComponents.year = 0
    wink8DateComponents.month = 0
    wink8DateComponents.day = 0
    wink8DateComponents.hour = 0
    wink8DateComponents.minute = -36
    
    let wink8Date = calendar?.dateByAddingComponents(
        wink8DateComponents
        , toDate: NSDate()
        , options: .MatchStrictly)
    
    wink8.date = wink8Date
    
    winks.append(wink8)
    
    
    
    // wink 9, 10, 11, 12
    
    winks.append(wink1)
    winks.append(wink2)
    winks.append(wink3)
    winks.append(wink4)
    
    
    return winks
    
}