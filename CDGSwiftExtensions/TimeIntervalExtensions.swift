//
//  TimeIntervalExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation

extension TimeInterval {
    /**
     CDGSwiftSDK
     Return time interval in typical countdown format, eg. 1:00, 10:00:00
     Note that hour will never have a 0 pad
     
     - Parameter units: The units to show for the countdown
     */
    public func toString(_ units: NSCalendar.Unit) -> String {
        let formatter = DateComponentsFormatter()
        formatter.zeroFormattingBehavior = .pad
        formatter.unitsStyle = .positional
        formatter.allowedUnits = units
        
        return formatter.string(from: self)!
    }
}
