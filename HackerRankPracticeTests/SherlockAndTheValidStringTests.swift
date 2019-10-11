//
//  SherlockAndTheValidStringTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-27.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//
import XCTest
@testable import HackerRankPractice

class SherlockAndTheValidStringTests: XCTestCase {
    
    let case1 = ("aabbcd", "NO")
    let case2 = ("aabbccddeefghi", "NO")
    let case4 = ("abcdefghhgfedecba", "YES")
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsValid() {
        let sherlock = SherlockAndTheValidString()
        
        let result1 = sherlock.isValid(s: case1.0)
        let result2 = sherlock.isValid(s: case2.0)
        
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "SherlockAndTheValidStringTestFile1", ofType: "txt")!
        let txtData = NSData(contentsOfFile: path)
        var case3 = String(data: txtData as! Data, encoding: .utf8)
        case3 = case3?.replacingOccurrences(of: "\n", with: "")
        let result3 = sherlock.isValid(s: case3 ?? "")
        
        let result4 = sherlock.isValid(s: case4.0)
        
        
        
//        XCTAssert(result1 == case1.1, String(format: "Failed with %@", result1))
//        XCTAssert(result2 == case2.1, String(format: "Failed with %@", result2))
//        XCTAssert(result3 == "YES", String(format: "Failed with %@", result3))
        XCTAssert(result4 == case4.1, String(format: "Failed with %@", result4))
    }
}
