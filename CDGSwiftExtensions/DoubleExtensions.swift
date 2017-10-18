//
//  DoubleExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation
import UIKit

extension Double {
    /**
     CDGSwiftSDK
     return string to 2 decimal place
     */
    public func formattedString(decimalPlaces: Int = 2) -> String {
        return String(format: "%.\(decimalPlaces)f", self)
    }
    
    /**
     CDGSwiftSDK
     Automatically calculate the font size for different screen sizes using an algorithm and parameters based on the standard psd settings created by Codigo's Creatives
     */
    public var fontSize: CGFloat {
        let largestiPhoneScreenSize: CGFloat = 414
        let screenRes: CGFloat = 72 // set by psd settings
        let scaleFactor: CGFloat = 3 // set by psd settings
        let downSizeFactor = UIScreen.main.bounds.size.width / largestiPhoneScreenSize
        
        return (screenRes / 72 ) * CGFloat(self) / scaleFactor * downSizeFactor
    }
}
