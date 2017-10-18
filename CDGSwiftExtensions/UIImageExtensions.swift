//
//  UIImageExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import UIKit

extension UIImage {
    /**
     CDGSwiftSDK
     Return image as jpg format base64 encoded string, with no compression at all
     */
    public var jpgBase64: String {
        return UIImageJPEGRepresentation(self, 1.0)!.base64EncodedString()
    }
    
    /**
     CDGSwiftSDK
     Return image as png format base64 encoded string
     */
    public var pngBase64: String {
        return UIImagePNGRepresentation(self)!.base64EncodedString()
    }
}
