//
//  BirthdayCakeTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2020-02-08.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import HackerRankPractice

class BirthdayCakeTests: XCTestCase {
    
    func testBirthdayCakeCandles() {
        let result = birthdayCakeCandles(ar: [3,2,1,3])
        XCTAssert(result == 2)
    }
    
}
