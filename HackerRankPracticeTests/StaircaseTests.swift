//
//  StaircaseTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2020-02-08.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import HackerRankPractice

class StaircaseTests: XCTestCase {
    
    func testStaircase() {
        let result = staircase(n: 95)
        XCTAssert(result != "")
    }
    
}

