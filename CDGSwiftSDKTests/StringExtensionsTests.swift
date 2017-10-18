//
//  StringExtensionsTests.swift
//  CDGSwiftSDKTests
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import XCTest
@testable import CDGSwiftSDK

class StringExtensionsTests: XCTestCase {
    func testTrimmed() {
        let string = " codigo    "
        XCTAssertEqual(string.trimmed, "codigo")
    }
    
    func testUnescaped() {
        // TODO
    }
    
    func testCapitalized() {
        XCTAssertEqual("codigo".capitalized, "Codigo")
        XCTAssertEqual("codigo Pte Ltd".capitalized, "Codigo pte ltd")
        XCTAssertEqual("1 Codigo Pte Ltd".capitalized, "1 codigo pte ltd")
    }
    
    func testReplace() {
        let string = "codigo"
        XCTAssertEqual(string.replace(target: "o", withString: "0"), "c0dig0")
    }
    
    func testIsEmail() {
        // empty
        XCTAssertFalse("".isEmail)
        
        // valid format
        var string = "lol@lol.lol"
        let acceptableSpecialChars = "!#$%&'*+-/=?^_`{|}~".characters
        XCTAssertTrue(string.isEmail)
        for specialChar in acceptableSpecialChars {
            string = "lol\(specialChar)lol@lol.lol"
            XCTAssertTrue(string.isEmail)
            string = "\(specialChar)lol@lol.lol"
            XCTAssertTrue(string.isEmail)
            string = "\(specialChar)@lol.lol"
            XCTAssertTrue(string.isEmail)
            string = "lol\(specialChar)@lol.lol"
            XCTAssertTrue(string.isEmail)
            for anotherSpecialChar in acceptableSpecialChars {
                string = "lol\(anotherSpecialChar)\(anotherSpecialChar)lol@lol.lol"
                XCTAssertTrue(string.isEmail)
                string = "\(anotherSpecialChar)lol\(anotherSpecialChar)@lol.lol"
                XCTAssertTrue(string.isEmail)
                string = "\(anotherSpecialChar)\(anotherSpecialChar)@lol.lol"
                XCTAssertTrue(string.isEmail)
                string = "lol\(anotherSpecialChar)lol\(specialChar)@lol.lol"
                XCTAssertTrue(string.isEmail)
            }
        }
        string = "lol.lol@lol.lol"
        XCTAssertTrue(string.isEmail)
        string = "lol@lol.l"
        XCTAssertTrue(string.isEmail)
        string = "1lol@lol.lol"
        XCTAssertTrue(string.isEmail)
        string = "lol1@lol.lol"
        XCTAssertTrue(string.isEmail)
        string = "lol@lol.lol1"
        XCTAssertTrue(string.isEmail)
        string = "lol@1.lol"
        XCTAssertTrue(string.isEmail)
        string = "lol@1.1"
        XCTAssertTrue(string.isEmail)
        
        // invalid formats
        string = "lol.lol.lol"
        XCTAssertFalse(string.isEmail)
        string = "lol@lol."
        XCTAssertFalse(string.isEmail)
        string = "lol@lol"
        XCTAssertFalse(string.isEmail)
        string = "lol@"
        XCTAssertFalse(string.isEmail)
        string = "@"
        XCTAssertFalse(string.isEmail)
        string = "@lol"
        XCTAssertFalse(string.isEmail)
        string = "@lol."
        XCTAssertFalse(string.isEmail)
        string = "@lol.lol"
        XCTAssertFalse(string.isEmail)
        string = "@lol.lol"
        XCTAssertFalse(string.isEmail)
        string = ".@lol.lol"
        XCTAssertFalse(string.isEmail)
        string = ".lol@lol.lol"
        XCTAssertFalse(string.isEmail)
    }
    
    func testIsAlphabetical() {
        XCTAssertTrue("codigo".isAlphabetical)
        XCTAssertFalse("c0Dig0".isAlphabetical)
        XCTAssertFalse("ç0D1g0".isAlphabetical)
        XCTAssertFalse("123".isAlphabetical)
        XCTAssertFalse("123.123".isAlphabetical)
        XCTAssertFalse("123.123.123".isAlphabetical)
    }
    
    func testIsNumeric() {
        XCTAssertFalse("codigo".isNumeric)
        XCTAssertFalse("c0Dig0".isNumeric)
        XCTAssertFalse("ç0D1g0".isNumeric)
        XCTAssertTrue("123".isNumeric)
        XCTAssertFalse("123.123".isNumeric)
        XCTAssertFalse("123.123.123".isNumeric)
    }
    
    func testIsNumber() {
        XCTAssertFalse("codigo".isNumber)
        XCTAssertFalse("c0Dig0".isNumber)
        XCTAssertFalse("ç0D1g0".isNumber)
        XCTAssertTrue("123".isNumber)
        XCTAssertTrue("123.123".isNumber)
        XCTAssertFalse("123.123.123".isNumber)
    }

    // MARK: Overrides
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

}
