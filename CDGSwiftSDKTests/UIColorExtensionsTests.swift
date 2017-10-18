//
//  UIColorExtensionsTests.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import XCTest
@testable import CDGSwiftSDK

class UIColorExtensionsTests: XCTestCase {
    func testInit() {
        XCTAssertEqual(UIColor.cyan, UIColor.init(hexString: "00FFff"))
        XCTAssertEqual(UIColor.init(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 0.5), UIColor.init(hexString: "#666666", alpha: 0.5))
    }
}
