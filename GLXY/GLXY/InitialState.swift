//
//  InitialState.swift
//  GLXY
//
//  Created by Tancrède on 7/28/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import UIKit



func initialState() -> AppState {
    
    var state = AppState()
    
    
    state.winksOverviewState.winks = [Wink](winks())
    
    
    return state
    
}


func winks() -> [Wink] {
    
    var winks = [Wink]()
    
    
    let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
    
    
    let wink1 = Wink()
    
    let winker1 = User()
    
    let winker1BirthdayComponents = NSDateComponents()
    winker1BirthdayComponents.year = 1973
    winker1BirthdayComponents.month = 5
    winker1BirthdayComponents.day = 18
    
    
    winker1.profilePhoto = UIImage.init(named: "p1")
    winker1.name = "Saksa23"
    winker1.country = "US"
    winker1.state = "NY"
    winker1.city = "Keila"
    winker1.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker1.sex = Sex(value: SexCode.Female.rawValue)
    winker1.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    
    wink1.winker = winker1
    
    
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
    
    let winker2 = User()
    
    let winker2BirthdayComponents = NSDateComponents()
    winker2BirthdayComponents.year = 1990
    winker2BirthdayComponents.month = 12
    winker2BirthdayComponents.day = 18
    
    
    winker2.profilePhoto = UIImage.init(named: "p2")
    winker2.name = "Thania"
    winker2.country = "FR"
    winker2.state = ""
    winker2.city = "Paris"
    winker2.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker2.sex = Sex(value: SexCode.Female.rawValue)
    winker2.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    
    wink2.winker = winker2
    
    
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
    
    let winker3 = User()
    
    let winker3BirthdayComponents = NSDateComponents()
    winker3BirthdayComponents.year = 1985
    winker3BirthdayComponents.month = 0
    winker3BirthdayComponents.day = 12
    
    
    winker3.profilePhoto = UIImage.init(named: "p3")
    winker3.name = "Samira"
    winker3.country = "BRL"
    winker3.state = "SP"
    winker3.city = "São Paulo"
    winker3.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker3.sex = Sex(value: SexCode.Female.rawValue)
    winker3.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    
    wink3.winker = winker3
    
    
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
    
    let winker4 = User()
    
    let winker4BirthdayComponents = NSDateComponents()
    winker4BirthdayComponents.year = 1985
    winker4BirthdayComponents.month = 0
    winker4BirthdayComponents.day = 12
    
    
    winker4.profilePhoto = UIImage.init(named: "p4")
    winker4.name = "Elisa"
    winker4.country = "BRL"
    winker4.state = "SP"
    winker4.city = "São Paulo"
    winker4.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker4.sex = Sex(value: SexCode.Female.rawValue)
    winker4.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    
    wink4.winker = winker4
    
    
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
    
    let winker5 = User()
    
    let winker5BirthdayComponents = NSDateComponents()
    winker5BirthdayComponents.year = 1983
    winker5BirthdayComponents.month = 3
    winker5BirthdayComponents.day = 12
    
    
    winker5.profilePhoto = UIImage.init(named: "p5")
    winker5.name = "Kal"
    winker5.country = "GB"
    winker5.state = ""
    winker5.city = "London"
    winker5.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker5.sex = Sex(value: SexCode.Male.rawValue)
    winker5.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    
    wink5.winker = winker5
    
    
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
    
    let winker6 = User()
    
    let winker6BirthdayComponents = NSDateComponents()
    winker6BirthdayComponents.year = 1969
    winker6BirthdayComponents.month = 9
    winker6BirthdayComponents.day = 14
    
    
    winker6.profilePhoto = UIImage.init(named: "p6")
    winker6.name = "Dominik"
    winker6.country = "GB"
    winker6.state = ""
    winker6.city = "London"
    winker6.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker6.sex = Sex(value: SexCode.Female.rawValue)
    winker6.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    
    wink6.winker = winker6
    
    
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
    
    let winker7 = User()
    
    let winker7BirthdayComponents = NSDateComponents()
    winker7BirthdayComponents.year = 1997
    winker7BirthdayComponents.month = 3
    winker7BirthdayComponents.day = 20
    
    
    winker7.profilePhoto = UIImage.init(named: "p7")
    winker7.name = "Gina"
    winker7.country = "US"
    winker7.state = ""
    winker7.city = "New York"
    winker7.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker7.sex = Sex(value: SexCode.Female.rawValue)
    winker7.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    
    wink7.winker = winker7
    
    
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
    
    let winker8 = User()
    
    let winker8BirthdayComponents = NSDateComponents()
    winker8BirthdayComponents.year = 1983
    winker8BirthdayComponents.month = 3
    winker8BirthdayComponents.day = 12
    
    
    winker8.profilePhoto = UIImage.init(named: "p8")
    winker8.name = "Jamel"
    winker8.country = "IT"
    winker8.state = ""
    winker8.city = "Rome"
    winker8.birthday = calendar?.dateFromComponents(winker1BirthdayComponents)
    winker8.sex = Sex(value: SexCode.Female.rawValue)
    winker7.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    
    wink8.winker = winker8
    
    
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
    
    
    winks.append(wink1)
    winks.append(wink2)
    winks.append(wink3)
    winks.append(wink4)
    
    
    return winks
    
}