//
//  RoadsAndLibrariesTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-09-21.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import XCTest
@testable import HackerRankPractice

class RoadsAndLibrariesTests: XCTestCase {
    
    let case1 = (5,6,1,[[1,2],[1,3],[1,4]],15)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testRoadsAndLibraries() {
        let cost = roadsAndLibraries(n: case1.0, c_lib:case1.1 , c_road: case1.2, cities: case1.3)
        XCTAssert(cost == case1.4, "Failed test")
    }
}
