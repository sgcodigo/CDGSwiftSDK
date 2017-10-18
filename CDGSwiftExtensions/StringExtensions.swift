//
//  StringExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation

extension String {
    /**
     CDGSwiftSDK
     Return a version of the string with whitespace chars from both ends of string removed. Empty string will be returned if string contains only whitespace characters.
     */
    public var trimmed: String {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
    /**
     CDGSwiftSDK
     TODO test?
     */
    public var unescaped: String {
        let entities = ["\0", "\t", "\n", "\r", "\"", "\'", "\\"]
        var _self = self
        for entity in entities {
            let descriptionCharacters = entity.debugDescription.characters.dropFirst().dropLast()
            let description = String(descriptionCharacters)
            _self = _self.replacingOccurrences(of: description, with: entity)
        }
        return _self
    }
    
    /**
     CDGSwiftSDK
     Return a version of the string with only first letter capitalized of a string, and the rest lower cased
     */
    public var capitalized: String {
        let _self = self.lowercased()
        return _self.prefix(1).uppercased() + _self.dropFirst()
    }
    
    /**
     CDGSwiftSDK
     Validate valid email string
     */
    public var isEmail: Bool {
        let emailRegex = "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
    
    /**
     CDGSwiftSDK
     Validate pure numeric string
     */
    public var isNumeric: Bool {
        let numericRegEx = "[0-9]*"
        let numericTest = NSPredicate(format:"SELF MATCHES %@", numericRegEx)
        return numericTest.evaluate(with: self)
    }
    
    /**
     CDGSwiftSDK
     Validate numeric string
     */
    public var isNumber: Bool {
        if let _ = NumberFormatter().number(from: self) {
            return true
        }
        return false
    }
    
    /**
     CDGSwiftSDK
     Validate pure alphabet string
     */
    public var isAlphabetical: Bool {
        let alphabetsRegEx = "[a-zA-Z]*"
        let alphabetsTest = NSPredicate(format:"SELF MATCHES %@", alphabetsRegEx)
        return alphabetsTest.evaluate(with: self)
    }
    
    /**
     CDGSwiftSDK
     Shorthand method to replace string with string
     */
    public func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
    }
}
