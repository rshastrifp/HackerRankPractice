//
//  DayFinderTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2020-03-01.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class DayFinderTests: XCTestCase {
    
    func testDayFinder() {
        XCTAssertEqual(dayFinder(day: "Wed", advance: 2), "Fri")
        XCTAssertEqual(dayFinder(day: "Sat", advance: 23), "Mon")
        XCTAssertEqual(dayFinder(day: "Fri", advance: 18), "Tue")
        XCTAssertEqual(dayFinder(day: "abc", advance: 2), nil)
    }
}
