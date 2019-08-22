//
//  MarkAndToysTest.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-20.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class MarkAndToysTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMaximumToys() {
        let markAndtoys = MarkAndToys()
        
        let case1 = [1,12,5,111,200,1000,10]
        
        let result = markAndtoys.maximumToys(prices: case1, k: 50)
        
        XCTAssert(result==4, "Failed")
        
    }
    
}
