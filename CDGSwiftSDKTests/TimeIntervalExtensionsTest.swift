//
//  TimeIntervalExtensionsTest.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import XCTest
@testable import CDGSwiftSDK

class TimeIntervalExtensionsTests: XCTestCase {
    func testDisplayCountdown() {
        let timeInterval: TimeInterval = 7266 // 2 hr, 1 min, 6 s
        XCTAssertEqual(timeInterval.toString([.hour, .minute]), "2:01")
        XCTAssertEqual(timeInterval.toString([.minute, .second]), "121:06")
        XCTAssertEqual(timeInterval.toString([.hour, .minute, .second]), "2:01:06")
    }
}
