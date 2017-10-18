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
    
    func testtoString() {
        XCTAssertEqual(negativeDbl.toString(), "-10.01")
        XCTAssertEqual(negativeDbl.toString(decimalPlaces: 4), "-10.0125")
        
        XCTAssertEqual(positiveDbl.toString(), "100.00")
        XCTAssertEqual(positiveDbl.toString(decimalPlaces: 4), "99.9956")
    }
    
    func testFontsize() {
        XCTAssertEqual(12.0.asFontSize, CGFloat(4.0))
    }
}
