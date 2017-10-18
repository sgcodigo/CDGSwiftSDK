//
//  User.swift
//  CDGSwiftSDKTests
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation

class User {
    var firstName: String
    var lastName: String
    var height: Double
    
    init(firstName: String, lastName: String, height: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.height = height
    }
}

extension User: CustomStringConvertible {
    var description: String {
        return "\(firstName) \(lastName), \(height)m"
    }
}

// Equatable protocol for array extensions tests
extension User: Equatable {
    static func == (lhs: User, rhs: User) -> Bool {
        return
            lhs.firstName == rhs.firstName &&
                lhs.lastName == rhs.lastName &&
                lhs.height == rhs.height
    }
}
