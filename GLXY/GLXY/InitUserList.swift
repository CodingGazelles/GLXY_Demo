//
//  XYUserList.swift
//  GLXY
//
//  Created by Tancrède on 8/3/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



func initXYUsers() -> [XYUserProfile] {
    
    var users = [XYUserProfile]()
    
    
    var user: XYUserProfile
    var userBirthdayComponents: NSDateComponents
    let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
    
    
    
    // user 1
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1973
    userBirthdayComponents.month = 5
    userBirthdayComponents.day = 18
    user.profilePhoto = UIImage.init(named: "p1")
    user.coverPhoto = UIImage.init(named: "p1")
    user.name = "Madeline"
    user.country = "US"
    user.state = "CA"
    user.city = "San Francisco"
    user.milesAway = 2
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Female
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    user.likes = .Female
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = true
    
    users.append(user)
    
    
    
    // user 2
    
    let user2 = XYUserProfile()
    
    let user2BirthdayComponents = NSDateComponents()
    user2BirthdayComponents.year = 1990
    user2BirthdayComponents.month = 12
    user2BirthdayComponents.day = 18
    
    user2.profilePhoto = UIImage.init(named: "p2")
    user2.coverPhoto = UIImage.init(named: "p2")
    
    user2.name = "Thania"
    user2.country = "FR"
    user2.state = ""
    user2.city = "Paris"
    user2.milesAway = 3
    user2.birthday = calendar?.dateFromComponents(user2BirthdayComponents)
    user2.sex = .Female
    user2.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    user2.likes = .Female
    user2.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    user2.isOnline = false
    
    
    
    users.append(user2)
    
    
    // user 3
    
    let user3 = XYUserProfile()
    
    let user3BirthdayComponents = NSDateComponents()
    user3BirthdayComponents.year = 1985
    user3BirthdayComponents.month = 0
    user3BirthdayComponents.day = 12
    
    
    user3.profilePhoto = UIImage.init(named: "p3")
    user3.coverPhoto = UIImage.init(named: "p3")
    
    user3.name = "Samira"
    user3.country = "BRL"
    user3.state = "SP"
    user3.city = "São Paulo"
    user3.milesAway = 7
    user3.birthday = calendar?.dateFromComponents(user3BirthdayComponents)
    user3.sex = .Female
    user3.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user3.likes = .Female
    user3.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    user3.isOnline = true
    
    
    
    users.append(user3)
    
    
    // user 4
    
    let user4 = XYUserProfile()
    
    let user4BirthdayComponents = NSDateComponents()
    user4BirthdayComponents.year = 1985
    user4BirthdayComponents.month = 0
    user4BirthdayComponents.day = 12
    
    user4.profilePhoto = UIImage.init(named: "p8")
    user4.coverPhoto = UIImage.init(named: "p8")
    
    user4.name = "Elisa"
    user4.country = "BRL"
    user4.state = "SP"
    user4.city = "São Paulo"
    user4.milesAway = 1
    user4.birthday = calendar?.dateFromComponents(user4BirthdayComponents)
    user4.sex = .Female
    user4.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user4.likes = .Female
    user4.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    user4.isOnline = false
    
    
    users.append(user4)
    
    
    // user 5
    
    let user5 = XYUserProfile()
    
    let user5BirthdayComponents = NSDateComponents()
    user5BirthdayComponents.year = 1983
    user5BirthdayComponents.month = 3
    user5BirthdayComponents.day = 12
    
    user5.profilePhoto = UIImage.init(named: "p5")
    user5.coverPhoto = UIImage.init(named: "p5")
    
    user5.name = "Kal"
    user5.country = "GB"
    user5.state = ""
    user5.city = "London"
    user5.milesAway = 9
    user5.birthday = calendar?.dateFromComponents(user5BirthdayComponents)
    user5.sex = .Male
    user5.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user5.likes = .Male
    user5.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    user5.isOnline = true
    
    
    users.append(user5)
    
    
    // user 6
    
    let user6 = XYUserProfile()
    let user6BirthdayComponents = NSDateComponents()
    user6BirthdayComponents.year = 1969
    user6BirthdayComponents.month = 9
    user6BirthdayComponents.day = 14
    user6.profilePhoto = UIImage.init(named: "p6")
    user6.coverPhoto = UIImage.init(named: "p6")
    user6.name = "Dominik"
    user6.country = "GB"
    user6.state = ""
    user6.city = "London"
    user6.milesAway = 4
    user6.birthday = calendar?.dateFromComponents(user6BirthdayComponents)
    user6.sex = .Female
    user6.maritalStatus = MaritalStatus(value: MaritalStatusCode.Single.rawValue)
    user6.likes = .Female
    user6.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user6.isOnline = false
    
    users.append(user6)
    
    
    // user 7
    
    let user7 = XYUserProfile()
    let user7BirthdayComponents = NSDateComponents()
    user7BirthdayComponents.year = 1997
    user7BirthdayComponents.month = 3
    user7BirthdayComponents.day = 20
    user7.profilePhoto = UIImage.init(named: "p7")
    user7.coverPhoto = UIImage.init(named: "p7")
    user7.name = "Gina"
    user7.country = "US"
    user7.state = ""
    user7.city = "New York"
    user7.milesAway = 7
    user7.birthday = calendar?.dateFromComponents(user7BirthdayComponents)
    user7.sex = .Female
    user7.maritalStatus = MaritalStatus(value: MaritalStatusCode.Separated.rawValue)
    user7.likes = .Female
    user7.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user7.isOnline = true
    
    users.append(user7)
    
    
    
    // user 8
    
    let user8 = XYUserProfile()
    let user8BirthdayComponents = NSDateComponents()
    user8BirthdayComponents.year = 1983
    user8BirthdayComponents.month = 3
    user8BirthdayComponents.day = 12
    user8.profilePhoto = UIImage.init(named: "p8")
    user8.coverPhoto = UIImage.init(named: "p8")
    user8.name = "Jamel"
    user8.country = "IT"
    user8.state = ""
    user8.city = "Rome"
    user8.milesAway = 6
    user8.birthday = calendar?.dateFromComponents(user8BirthdayComponents)
    user8.sex = .Male
    user8.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user8.likes = .Male
    user8.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user8.isOnline = true
    
    users.append(user8)
    
    
    
    // user 9
    
    let user9 = XYUserProfile()
    let user9BirthdayComponents = NSDateComponents()
    user9BirthdayComponents.year = 1987
    user9BirthdayComponents.month = 1
    user9BirthdayComponents.day = 19
    user9.profilePhoto = UIImage.init(named: "p8")
    user9.coverPhoto = UIImage.init(named: "p8")
    user9.name = "Roberto"
    user9.country = "IT"
    user9.state = ""
    user9.city = "Milan"
    user9.milesAway = 3
    user9.birthday = calendar?.dateFromComponents(user9BirthdayComponents)
    user9.sex = .Male
    user9.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user9.likes = .Male
    user9.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user9.isOnline = true
    
    users.append(user9)
    
    
    
    // user 10
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1993
    userBirthdayComponents.month = 0
    userBirthdayComponents.day = 3
    user.profilePhoto = UIImage.init(named: "p1")
    user.coverPhoto = UIImage.init(named: "p1")
    user.name = "Jaio"
    user.country = "BR"
    user.state = ""
    user.city = "São Paulo"
    user.milesAway = 3
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Male
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Male
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    user.isOnline = true
    
    users.append(user)
    
    
    
    // user 11
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 2004
    userBirthdayComponents.month = 7
    userBirthdayComponents.day = 30
    user.profilePhoto = UIImage.init(named: "p2")
    user.coverPhoto = UIImage.init(named: "p2")
    user.name = "Yoko"
    user.country = "JP"
    user.state = ""
    user.city = "Tokyo"
    user.milesAway = 9
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Male
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Male
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = false
    
    users.append(user)
    
    
    
    // user 12
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1995
    userBirthdayComponents.month = 5
    userBirthdayComponents.day = 29
    user.profilePhoto = UIImage.init(named: "p3")
    user.coverPhoto = UIImage.init(named: "p3")
    user.name = "Jerry"
    user.country = "GB"
    user.state = ""
    user.city = "London"
    user.milesAway = 2
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Male
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Male
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = true
    
    users.append(user)
    
    
    
    // user 13
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1995
    userBirthdayComponents.month = 5
    userBirthdayComponents.day = 29
    user.profilePhoto = UIImage.init(named: "p8")
    user.coverPhoto = UIImage.init(named: "p8")
    user.name = "Thomas"
    user.country = "GB"
    user.state = ""
    user.city = "London"
    user.milesAway = 2
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Male
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Male
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = false
    
    users.append(user)
    
    
    
    // user 14
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1995
    userBirthdayComponents.month = 5
    userBirthdayComponents.day = 29
    user.profilePhoto = UIImage.init(named: "p5")
    user.coverPhoto = UIImage.init(named: "p5")
    user.name = "Sonya"
    user.country = "GB"
    user.state = ""
    user.city = "London"
    user.milesAway = 2
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Female
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Female
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = false
    
    users.append(user)
    
    
    
    // user 15
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1995
    userBirthdayComponents.month = 5
    userBirthdayComponents.day = 29
    user.profilePhoto = UIImage.init(named: "p6")
    user.coverPhoto = UIImage.init(named: "p6")
    user.name = "Marine"
    user.country = "GB"
    user.state = ""
    user.city = "London"
    user.milesAway = 4
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Female
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Female
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = false
    
    users.append(user)
    
    
    
    // user 16
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1998
    userBirthdayComponents.month = 6
    userBirthdayComponents.day = 29
    user.profilePhoto = UIImage.init(named: "p7")
    user.coverPhoto = UIImage.init(named: "p7")
    user.name = "Wilmer"
    user.country = "SP"
    user.state = ""
    user.city = "Madrid"
    user.milesAway = 8
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Male
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Male
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = false
    
    users.append(user)
    
    
    
    // user 17
    
    user = XYUserProfile()
    userBirthdayComponents = NSDateComponents()
    userBirthdayComponents.year = 1999
    userBirthdayComponents.month = 0
    userBirthdayComponents.day = 22
    user.profilePhoto = UIImage.init(named: "p8")
    user.coverPhoto = UIImage.init(named: "p8")
    user.name = "Carmelita"
    user.country = "PT"
    user.state = ""
    user.city = "Lisbon"
    user.milesAway = 4
    user.birthday = calendar?.dateFromComponents(userBirthdayComponents)
    user.sex = .Female
    user.maritalStatus = MaritalStatus(value: MaritalStatusCode.Married.rawValue)
    user.likes = .Female
    user.presentation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    user.isOnline = false
    
    users.append(user)
    
    
    
    return users
    
}