//
//  FraudulentActivityNotificationTest.swift
//  HackerRankPracticeTests
//
//  Created by Ronak Shastri on 2019-08-21.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import HackerRankPractice

class FraudulentActivityNotificationTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testActivityNotifications() {
        let fraudNote = FraudulentActivityNotification()
        
        let case1 = ([2,3,4,2,3,6,8,4,5],5,2)
        let case2 = ([1,2,3,4,4],4,0)
        let case3 = ([2,3,4,2,3,6,8,4,5],5,2)
        
        let notificationNumbers = fraudNote.activityNotifications(expenditure: case3.0, d:case3.1)
        
        XCTAssert(notificationNumbers==case3.2, String(format:"Failed Test with result: %d" , notificationNumbers))
    }
    
}


