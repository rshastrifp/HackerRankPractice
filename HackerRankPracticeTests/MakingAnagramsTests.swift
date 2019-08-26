//
//  MakingAnagramsTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-26.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import HackerRankPractice

class MakingAnagramsTests: XCTestCase {
    
    let case1 = ("abcde","abc", 2)
    let case2 = ("aac","def", 6)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMakeAnagram() {
        let makeAnagram = MakingAnagrams()
        
        let result1 = makeAnagram.makeAnagram(a: case1.0, b: case1.1)
        let result2 = makeAnagram.makeAnagram(a: case2.0, b: case2.1)
        
        XCTAssert(result1 == case1.2, String(format: "Failed with the result : %d", result1))
        XCTAssert(result2 == case2.2, String(format: "Failed with the result : %d", result2))
    }
}
