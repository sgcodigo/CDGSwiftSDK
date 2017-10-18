//
//  DoubleExtensionsTests.swift
//  CDGSwiftSDKTests
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation

import XCTest
@testable import CDGSwiftSDK

class DoubleExtensionsTests: XCTestCase {
    let negativeDbl = -10.01247545
    let positiveDbl = 99.9956256456
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFormattedString() {
        XCTAssertEqual(negativeDbl.formattedString(), "-10.01")
        XCTAssertEqual(negativeDbl.formattedString(decimalPlaces: 4), "-10.0125")
        
        XCTAssertEqual(positiveDbl.formattedString(), "100.00")
        XCTAssertEqual(positiveDbl.formattedString(decimalPlaces: 4), "99.9956")
    }
    
    func testFontsize() {
        XCTAssertEqual(12.fontSize, CGFloat(4.0))
    }
}
