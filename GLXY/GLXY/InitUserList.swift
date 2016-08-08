//
//  UserList.swift
//  GLXY
//
//  Created by Tancrède on 8/3/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



func initUsers() -> [User] {
    
    var users = [User]()
    
    
    let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
    
    
    // user 1
    
    let user1 = User()
    
    let user1BirthdayComponents = NSDateComponents()
    user1BirthdayComponents.year = 1973
    user1BirthdayComponents.month = 5
    user1BirthdayComponents.day = 18
    
    
    user1.profilePhoto = UIImage.init(named: "p1")
    user1.name = "Madeline"
    user1.country = "US"
    user1.state = "CA"
    user1.city = "San Francisco"
    user1.birthday = calendar?.dateFromComponents(user1BirthdayComponents)
    user1.sex = Sex(value: SexCode.Female.rawValue)
    user1.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    user1.isOnline = true
    
    users.append(user1)
    
    
    // user 2
    
    let user2 = User()
    
    let user2BirthdayComponents = NSDateComponents()
    user2BirthdayComponents.year = 1990
    user2BirthdayComponents.month = 12
    user2BirthdayComponents.day = 18
    
    user2.profilePhoto = UIImage.init(named: "p2")
    user2.name = "Thania"
    user2.country = "FR"
    user2.state = ""
    user2.city = "Paris"
    user2.birthday = calendar?.dateFromComponents(user2BirthdayComponents)
    user2.sex = Sex(value: SexCode.Female.rawValue)
    user2.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    user2.isOnline = false
    
    users.append(user2)
    
    
    // user 3
    
    let user3 = User()
    
    let user3BirthdayComponents = NSDateComponents()
    user3BirthdayComponents.year = 1985
    user3BirthdayComponents.month = 0
    user3BirthdayComponents.day = 12
    
    
    user3.profilePhoto = UIImage.init(named: "p3")
    user3.name = "Samira"
    user3.country = "BRL"
    user3.state = "SP"
    user3.city = "São Paulo"
    user3.birthday = calendar?.dateFromComponents(user3BirthdayComponents)
    user3.sex = Sex(value: SexCode.Female.rawValue)
    user3.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user3.isOnline = true
    
    users.append(user3)
    
    
    // user 4
    
    let user4 = User()
    
    let user4BirthdayComponents = NSDateComponents()
    user4BirthdayComponents.year = 1985
    user4BirthdayComponents.month = 0
    user4BirthdayComponents.day = 12
    
    user4.profilePhoto = UIImage.init(named: "p4")
    user4.name = "Elisa"
    user4.country = "BRL"
    user4.state = "SP"
    user4.city = "São Paulo"
    user4.birthday = calendar?.dateFromComponents(user4BirthdayComponents)
    user4.sex = Sex(value: SexCode.Female.rawValue)
    user4.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user4.isOnline = false
    
    users.append(user4)
    
    
    // user 5
    
    let user5 = User()
    
    let user5BirthdayComponents = NSDateComponents()
    user5BirthdayComponents.year = 1983
    user5BirthdayComponents.month = 3
    user5BirthdayComponents.day = 12
    
    user5.profilePhoto = UIImage.init(named: "p5")
    user5.name = "Kal"
    user5.country = "GB"
    user5.state = ""
    user5.city = "London"
    user5.birthday = calendar?.dateFromComponents(user5BirthdayComponents)
    user5.sex = Sex(value: SexCode.Male.rawValue)
    user5.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user5.isOnline = true
    
    users.append(user5)
    
    
    // user 6
    
    let user6 = User()
    
    let user6BirthdayComponents = NSDateComponents()
    user6BirthdayComponents.year = 1969
    user6BirthdayComponents.month = 9
    user6BirthdayComponents.day = 14
    
    user6.profilePhoto = UIImage.init(named: "p6")
    user6.name = "Dominik"
    user6.country = "GB"
    user6.state = ""
    user6.city = "London"
    user6.birthday = calendar?.dateFromComponents(user6BirthdayComponents)
    user6.sex = Sex(value: SexCode.Female.rawValue)
    user6.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    user6.isOnline = false
    
    users.append(user6)
    
    
    // user 7
    
    let user7 = User()
    
    let user7BirthdayComponents = NSDateComponents()
    user7BirthdayComponents.year = 1997
    user7BirthdayComponents.month = 3
    user7BirthdayComponents.day = 20
    
    user7.profilePhoto = UIImage.init(named: "p7")
    user7.name = "Gina"
    user7.country = "US"
    user7.state = ""
    user7.city = "New York"
    user7.birthday = calendar?.dateFromComponents(user7BirthdayComponents)
    user7.sex = Sex(value: SexCode.Female.rawValue)
    user7.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user7.isOnline = true
    
    users.append(user7)
    
    
    // user 8
    
    let user8 = User()
    
    let user8BirthdayComponents = NSDateComponents()
    user8BirthdayComponents.year = 1983
    user8BirthdayComponents.month = 3
    user8BirthdayComponents.day = 12
    
    user8.profilePhoto = UIImage.init(named: "p8")
    user8.name = "Jamel"
    user8.country = "IT"
    user8.state = ""
    user8.city = "Rome"
    user8.birthday = calendar?.dateFromComponents(user8BirthdayComponents)
    user8.sex = Sex(value: SexCode.Female.rawValue)
    user8.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user8.isOnline = true
    
    users.append(user8)
    
    
    
    
    
    return users
    
}