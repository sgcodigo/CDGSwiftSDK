//
//  UIViewControllerExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import UIKit

extension UIViewController {
    /**
     CDGSwiftSDK
     Adds an NotificationCenter with name and Selector
     */
    public func addNotificationObserver(_ name: String, selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: NSNotification.Name(rawValue: name), object: nil)
    }

    /**
     CDGSwiftSDK
     Remove specific notfication observer in UIViewController
     */
    public func removeNotificationObserver(_ name: String) {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: name), object: nil)
    }
    
    /**
     CDGSwiftSDK
     Remove all notfication observers in UIViewController
     */
    public func removeNotificationObservers() {
        NotificationCenter.default.removeObserver(self)
    }
    
    /**
     CDGSwiftSDK
     Return tab bar height
     */
    public var tabBarHeight: CGFloat {
        if let me = self as? UINavigationController, let visibleViewController = me.visibleViewController {
            return visibleViewController.tabBarHeight
        }
        if let tab = self.tabBarController {
            return tab.tabBar.frame.size.height
        }
        return 0
    }
    
    /**
     CDGSwiftSDK
     Return navigation bar height
     */
    public var navigationBarHeight: CGFloat {
        if let me = self as? UINavigationController, let visibleViewController = me.visibleViewController {
            return visibleViewController.navigationBarHeight
        }
        if let nav = self.navigationController {
            return nav.navigationBar.frame.height
        }
        return 0
    }
}
