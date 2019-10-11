//
//  BalancedBrackets.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-09-19.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import XCTest
@testable import HackerRankPractice

class BalancedBracketsTests: XCTestCase {
    
    let case1 = ("{[()]}","YES")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInsertNodeAtPosition() {
        let result = isBalanced(s: case1.0)
        XCTAssert(result == "YES", String(format: "Failed with %@", result))
    }
}

