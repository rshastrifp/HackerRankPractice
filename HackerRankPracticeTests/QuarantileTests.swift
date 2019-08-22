//
//  QuarantileTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-22.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class QuarantileTests: XCTestCase {
    
    let case1 = [0,1,2,3,4,5,6,7,8]
    let case2 = [3,7,8,5,12,14,21,13,18]
    let case3 = [4,17,7,14,18,12,3,16,10,4,4,12]
    let case4 = [3,7,8,5,12,14,21,15,18,14]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testfindQuarantile() {
        let quarantile = Quarantile()
        
        let results = quarantile.findQuarantile(array: case1)
    }
    
}
