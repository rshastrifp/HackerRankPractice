//
//  TheLoveLetterMysteryTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-30.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class TheLoveLetterMysteryTests: XCTestCase {
    
    let case1 = ("abcddcba", 0)
    let case2 = ("abcdeabcd", 8)
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTheLoveLetterMystery() {
        let theLoveLetter = TheLoveLetterMystery()
        
        let result1 = theLoveLetter.theLoveLetterMystery(s: case1.0)
        XCTAssert((result1 == case1.1), String(format: "Failed with %d",result1))

        let result2 = theLoveLetter.theLoveLetterMystery(s: case2.0)
        XCTAssert((result2 == case2.1), String(format: "Failed with %d",result2))
    }
}

