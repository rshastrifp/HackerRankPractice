//
//  FraudulentActivityNotification.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-08-21.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation
import UIKit

class FraudulentActivityNotification {
    
    func activityNotifications(expenditure: [Int], d: Int) -> Int {
        
        var notififcationNumber = 0
        
        let meanMedian = MeanMedian()
        
        for index in stride(from: d, to: expenditure.count-1, by: 1) {
            let subArray = Array(expenditure[(index-d)...index-1])
            let median = meanMedian.findMedian(a:subArray)
            let compareWith = Double(expenditure[index])
            if (compareWith >= (median*2)) {
                notififcationNumber += 1
            }
        }
        
        return notififcationNumber
        
    }
}

