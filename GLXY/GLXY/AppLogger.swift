//
//  Logger.swift
//  GLXY
//
//  Created by Tancrède on 6/30/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import Foundation

import CleanroomLogger



// MARK: - Logger

/*
 Encapsulate the CleanroomLogger log framework
 */

class AppLogger {
    static func enable(){
        let config = XcodeLogConfiguration(minimumSeverity: LogSeverity.Verbose)
        Log.enable(configuration: config)
    }
    static func verbose( message: String, function: String = #function, filePath: String = #file, fileLine: Int = #line){
        Log.verbose?.message( message, function: function, filePath: filePath, fileLine: fileLine)
    }
    static func debug( message: String, function: String = #function, filePath: String = #file, fileLine: Int = #line){
        Log.debug?.message(message, function: function, filePath: filePath, fileLine: fileLine)
    }
    static func info( message: String, function: String = #function, filePath: String = #file, fileLine: Int = #line){
        Log.info?.message(message, function: function, filePath: filePath, fileLine: fileLine)
    }
    static func warn( message: String, error: Loggable? = nil, function: String = #function, filePath: String = #file, fileLine: Int = #line){
        Log.warning?.message(message, function: function, filePath: filePath, fileLine: fileLine)
        if error != nil {
            Log.warning?.message("\(error)")
        }
    }
    static func error( message: String, error: Loggable? = nil, function: String = #function, filePath: String = #file, fileLine: Int = #line){
        Log.error?.message(message, function: function, filePath: filePath, fileLine: fileLine)
        if error != nil {
            Log.error?.message("\(error)")
        }
    }
}



// MARK: - Loggable

/*
 Protocol used to mark all objects that we need to print in the logs
 */
protocol Loggable: CustomDebugStringConvertible, CustomStringConvertible {}



// MARK: - CustomStringConvertible

/*
 Implementation of the CustomStringConvertible protocol
 */

public extension CustomStringConvertible {
    var description: String {
        return description()
    }
    
    func description(indentationLevel: Int = 0) -> String {
        
        let indentString = (0..<indentationLevel).reduce("") { tabs, _ in tabs + "\t" }
        
        var s = "\(self.dynamicType)"
        
        let mirror = Mirror(reflecting: self)
        let children = mirror.children
        
        if children.count == 0 && indentationLevel == 0 {
            return s
        }
        
        if children.count == 0 {
            return "\(s) = \(description),"
        }
        
        s += " {"
        
        s = children.reduce(s) {
            reducedString, child in
            
            if let aChild = child.1 as? CustomStringConvertible {
                let childDescription = aChild.description(indentationLevel + 1)
                return reducedString + "\n\(indentString)\t\(child.0!): \(childDescription)"
            } else {
                
                return reducedString +  "\n\(indentString)\t\(child.0!): \(child.1),"
            }
        }
        
        s = s.substringToIndex(s.characters.endIndex.predecessor())
        s += "\n\(indentString)}"
        
        return s
    }
}



// MARK: - CustomDebugStringConvertible

/*
 Implementation of the CustomDebugStringConvertible protocol
 */

public extension CustomDebugStringConvertible {
    var debugDescription: String {
        return debugDescription()
    }
    
    func debugDescription(indentationLevel: Int = 0) -> String {
        
        let indentString = (0..<indentationLevel).reduce("") { tabs, _ in tabs + "\t" }
        
        var s = "\(self.dynamicType)"
        
        let mirror = Mirror(reflecting: self)
        let children = mirror.children
        
        if children.count == 0 && indentationLevel == 0 {
            return s
        }
        
        if children.count == 0 {
            return "\(s) = \(debugDescription),"
        }
        
        s += " {"
        
        s = children.reduce(s) {
            reducedString, child in
            
            if let aChild = child.1 as? CustomDebugStringConvertible {
                let childDescription = aChild.debugDescription(indentationLevel + 1)
                return reducedString + "\n\(indentString)\t\(child.0!): \(childDescription)"
            } else {
                
                return reducedString +  "\n\(indentString)\t\(child.0!): \(child.1),"
            }
        }
        
        s = s.substringToIndex(s.characters.endIndex.predecessor())
        s += "\n\(indentString)}"
        
        return s
    }
}




