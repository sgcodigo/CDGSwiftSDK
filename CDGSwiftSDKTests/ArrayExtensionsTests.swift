//
//  ArrayExtensionsTests.swift
//  CDGSwiftSDKTests
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import XCTest
@testable import CDGSwiftSDK

class ArrayExtensionsTests: XCTestCase {
    let emptyArray: [String] = []
    let stringArray = ["qwe", "asd", "zxc"]
    let doubleArray = [12.00, 123, 12.64345]
    
    let user1 = User.init(firstName: "Victor", lastName: "Leong", height: 1.88)
    let user2 = User.init(firstName: "Vic", lastName: "L", height: 1.88)
    let user3 = User.init(firstName: "Jia", lastName: "cheng", height: 1.88)
    var usersArray: [User] = []
    
    override func setUp() {
        super.setUp()
        usersArray = [user1, user2, user3]
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testString() {
        XCTAssertEqual(emptyArray.string, [])
        XCTAssertEqual(stringArray.string, ["qwe", "asd", "zxc"])
        XCTAssertEqual(doubleArray.string, ["12.0", "123.0", "12.64345"])
        XCTAssertEqual(usersArray.string, ["Victor Leong, 1.88m", "Vic L, 1.88m", "Jia cheng, 1.88m"])
    }
    
    func testSplitIntoChunks() {
        XCTAssertTrue(stringArray == stringArray)

        var splitStringArray = stringArray.splitIntoChunks(ofSize: 2)
        XCTAssertTrue(splitStringArray[0] == ["qwe", "asd"])
        XCTAssertTrue(splitStringArray[1] == ["zxc"])
        splitStringArray = stringArray.splitIntoChunks(ofSize: 3)
        XCTAssertTrue(splitStringArray[0] == ["qwe", "asd", "zxc"])
        splitStringArray = stringArray.splitIntoChunks(ofSize: 4)
        XCTAssertTrue(splitStringArray[0] == ["qwe", "asd", "zxc"])
        
        var splitDoubleArray = doubleArray.splitIntoChunks(ofSize: 2)
        XCTAssertTrue(splitDoubleArray[0] == [12.0, 123.0])
        XCTAssertTrue(splitDoubleArray[1] == [12.64345])
        splitDoubleArray = doubleArray.splitIntoChunks(ofSize: 3)
        XCTAssertTrue(splitDoubleArray[0] == [12.0, 123.0, 12.64345])
        splitDoubleArray = doubleArray.splitIntoChunks(ofSize: 4)
        XCTAssertTrue(splitDoubleArray[0] == [12.0, 123.0, 12.64345])
        
        var splitUsersArray = usersArray.splitIntoChunks(ofSize: 2)
        XCTAssertTrue(splitUsersArray[0].elementsEqual([user1, user2]))
        XCTAssertTrue(splitUsersArray[1].elementsEqual([user3]))
        splitUsersArray = usersArray.splitIntoChunks(ofSize: 3)
        XCTAssertTrue(splitUsersArray[0].elementsEqual([user1, user2, user3]))
        splitUsersArray = usersArray.splitIntoChunks(ofSize: 4)
        XCTAssertTrue(splitUsersArray[0].elementsEqual([user1, user2, user3]))
    }
}
