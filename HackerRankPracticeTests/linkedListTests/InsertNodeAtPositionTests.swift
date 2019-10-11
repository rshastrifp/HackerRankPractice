//
//  InsertNodeAtPositionTests.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-09-19.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import XCTest
@testable import HackerRankPractice

class InsertNodeAtPositionTests: XCTestCase {
    
    let case1 = ([16,13,7],1,2,[16,13,1,7])
    let case2 = ([11,9,19,10,4],20,3,[11,9,19,20,10,4])
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInsertNodeAtPosition() {
        var linkedList = SinglyLinkedList()
        
//        //case 1
//        case1.0.forEach { (intPrm) in
//            linkedList.insertNode(nodeData: intPrm)
//        }
//        
//        var head = insertNodeAtPosition(head:linkedList.head , data:case1.1 , position:case1.2)
//
//        var resultArray = [Int]()
//        var pointer = head
//        while pointer?.next != nil {
//            resultArray.append(pointer?.data ?? 0)
//            pointer = pointer?.next
//        }
//        resultArray.append(pointer?.data ?? 0)
//        XCTAssert(resultArray==case1.3, "Failed test")
        
        //case 2
        case2.0.forEach { (intPrm) in
            linkedList.insertNode(nodeData: intPrm)
        }
        
        let head = insertNodeAtPosition(head:linkedList.head , data:case2.1 , position:case2.2)
        
        var resultArray = [Int]()
        var pointer = head
        while pointer?.next != nil {
            resultArray.append(pointer?.data ?? 0)
            pointer = pointer?.next
        }
        resultArray.append(pointer?.data ?? 0)
        XCTAssert(resultArray==case2.3, "Failed test")
        
    }
}
