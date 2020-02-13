//
//  TimeConversionTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2020-02-08.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import HackerRankPractice

class TimeConversionTests: XCTestCase {
    
    func testTimeConversion() {
        let result = timeConversion(s: "12:05:45AM")
        XCTAssert(result == "00:05:45")
    }
    
}
