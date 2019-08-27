//
//  AlternatingCharactersTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-27.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class AlternatingCharactersTests: XCTestCase {
    
    let case1 = ("abbbb", 3)
    let case2 = ("ababab", 0)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAlternatingCharacters() {
        let alteringChar = AlternatingCharacters()
        
        let result1 = alteringChar.alternatingCharacters(s: case1.0)
        let result2 = alteringChar.alternatingCharacters(s: case2.0)
        
        XCTAssert(result1==case1.1, String(format: "Failed with result %d", result1))
        XCTAssert(result2==case2.1, String(format: "Failed with result %d", result2))
    }
}
