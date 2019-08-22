//
//  BubbleSortTest.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-22.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class BubbleSortTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCountSwaps() {
        let case1 = ([6,4,1],3,1,6)
        let case2 = ([3,2,1],3,1,3)
        
        let bubbleSort = BubbleSort()
        let result = bubbleSort.countSwaps(a: case2.0)
        
        XCTAssert((result.0 == case2.1) , String(format: "Failed with result %d", result.0 ))
    }
    
}
