//
//  UIViewExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import UIKit

extension UIView {
    
    /**
     CDGSwiftSDK
     Mask UIView with a rounded radius
     */
    public func setCornerRadius(_ value: CGFloat) {
        self.layer.cornerRadius = value
    }
    
    /**
     CDGSwiftSDK
     Shake UIView
     */
    public func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.06
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.frame.midX - 10, y: self.frame.midY)
        animation.toValue = CGPoint(x: self.frame.midX + 10, y: self.frame.midY)
        self.layer.add(animation, forKey: "position")
    }

    /**
     CDGSwiftSDK
     Mask UIView with a rounded cover
     */
    public func rounded() {
        self.setCornerRadius(min(self.frame.size.height, self.frame.size.width) / 2)
        self.layer.borderWidth = 0
    }
    
    /**
     CDGSwiftSDK
     Mask UIView with a rounded cover, with a border of desired color and width around it
     
     - Parameter withBorderColor: Color of rounded border
     - Parameter withBorderWidth: Width of rounded border
     */
    public func rounded(withBorderColor color: UIColor, withBorderWidth width: CGFloat) {
        self.setCornerRadius(min(self.frame.size.height, self.frame.size.width) / 2)
        self.layer.masksToBounds = true
        
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
