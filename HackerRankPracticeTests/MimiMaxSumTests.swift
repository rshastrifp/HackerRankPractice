//
//  MimiMaxSumTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-09-18.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//


import XCTest
@testable import HackerRankPractice

class MimiMaxSumTests: XCTestCase {
    
    let case1 = ([1,3,5,7,9], "16 24")
    let case2 = ([1,2,3,4,5], "10 14")
    let case3 = ([793810624,895642170,685903712,623789054,468592370], "2572095760 2999145560")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFindMinMax() {
        let minMax = MiniMaxSum()
        
        //XCTAssert(minMax.findMinMax(arr: case1.0) == case1.1, String(format: "Failed with result %@.", minMax.findMinMax(arr: case1.0)))
        //XCTAssert(minMax.findMinMax(arr: case2.0) == case2.1, String(format: "Failed with result %@.", minMax.findMinMax(arr: case2.0)))
        XCTAssert(minMax.findMinMax(arr: case3.0) == case3.1, String(format: "Failed with result %@.", minMax.findMinMax(arr: case3.0)))
    }
}
