//
//  IntExtensionsTests.swift
//  CDGSwiftSDKTests
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import XCTest
@testable import CDGSwiftSDK

class IntExtensionsTests: XCTestCase {
    let negativeInt = -10
    let positiveInt = 10
    let oddInt = 111
    let evenInt = 122
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsEven() {
        XCTAssertTrue(negativeInt.isEven)
        XCTAssertTrue(positiveInt.isEven)
        XCTAssertFalse(oddInt.isEven)
        XCTAssertTrue(evenInt.isEven)
    }
    
    func testIsOdd() {
        XCTAssertFalse(negativeInt.isOdd)
        XCTAssertFalse(positiveInt.isOdd)
        XCTAssertTrue(oddInt.isOdd)
        XCTAssertFalse(evenInt.isOdd)
    }
    
    func testIsPositive() {
        XCTAssertFalse(negativeInt.isPositive)
        XCTAssertTrue(positiveInt.isPositive)
        XCTAssertTrue(oddInt.isPositive)
        XCTAssertTrue(evenInt.isPositive)
    }
    
    func testIsNegative() {
        XCTAssertTrue(negativeInt.isNegative)
        XCTAssertFalse(positiveInt.isNegative)
        XCTAssertFalse(oddInt.isNegative)
        XCTAssertFalse(evenInt.isNegative)
    }
    
    func testCGFloat() {
        XCTAssertEqual(negativeInt.cgFloat, -10.0)
        XCTAssertEqual(positiveInt.cgFloat, 10.0)
        XCTAssertEqual(oddInt.cgFloat, 111.0)
        XCTAssertEqual(evenInt.cgFloat, 122.0)
    }
    
    func testDigits() {
        XCTAssertEqual(negativeInt.digits, 2)
        XCTAssertEqual(positiveInt.digits, 2)
        XCTAssertEqual(oddInt.digits, 3)
        XCTAssertEqual(evenInt.digits, 3)
    }
}
