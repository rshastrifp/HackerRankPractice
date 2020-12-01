//
//  TestStringExtension.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shahstri on 2020-03-27.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class TestStringExtension: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssert("".findLinks().count == 0)
        XCTAssert("https://www.google.com/ hello https://www.google.com/".findLinks().count == 2)
        XCTAssert("https://www.google.com/ hello https://www.yahoo.com/".findLinks().count == 2)
        XCTAssert("https://www.google.com/ hello www.google/".findLinks().count == 2)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
