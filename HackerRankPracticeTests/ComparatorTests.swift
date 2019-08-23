//
//  ComparatorTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-23.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import HackerRankPractice

class ComparatorTests: XCTestCase {
    
    let case1 = ([Player(name: "Ronak", score: 20),Player(name: "Rachana", score: 20), Player(name: "Shivansh", score: 100)],
                 [Player(name: "Rachana", score: 20),Player(name: "Ronak", score: 20), Player(name: "Shivansh", score: 100)])
    let case2 = ([Player(name: "Ronak", score: 100),Player(name: "Rachana", score: 100), Player(name: "Shivansh", score: 100)],
                 [Player(name: "Rachana", score: 100),Player(name: "Ronak", score: 100), Player(name: "Shivansh", score: 100)])
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSortList() {
        let comparator = Comparator()
        let result = comparator.sortList(playerList: case2.0)
        
        XCTAssert(result == case2.1, String(format: "Failed with %@", result))
        
    }
}
