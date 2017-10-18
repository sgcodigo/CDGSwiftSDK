//
//  IntExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation

import CoreGraphics

extension Int {
    /**
     CDGSwiftSDK
     Check if integer is even.
     */
    public var isEven: Bool { return (self % 2 == 0) }
    
    /**
     CDGSwiftSDK
     Check if integer is odd.
     */
    public var isOdd: Bool { return (self % 2 != 0) }
    
    /**
     CDGSwiftSDK
     Checks if the integer is positive.
     */
    public var isPositive: Bool { return (self > 0) }
    
    /**
     CDGSwiftSDK
     Checks if the integer is negative.
     */
    public var isNegative: Bool { return (self < 0) }
    
    /**
     CDGSwiftSDK
     Convert to CGFloat
     */
    public var cgFloat: CGFloat { return CGFloat(self) }
    
    /**
     CDGSwiftSDK
     Convert to Double
     */
    public var double: Double { return Double(self) }
    
    /**
     CDGSwiftSDK
     Convert to Double
     */
    public var digits: Int { return numberOfDigits(in: self) }
    
    // private recursive method for counting digits
    // https://stackoverflow.com/questions/37335286/given-a-number-n-find-how-many-digits-in-that-number-are-useful-a-digit-in-the
    private func numberOfDigits(in number: Int) -> Int {
        if abs(number) < 10 {
            return 1
        } else {
            return 1 + numberOfDigits(in: number/10)
        }
    }
}
