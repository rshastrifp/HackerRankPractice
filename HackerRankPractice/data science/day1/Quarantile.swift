//
//  Quarantile.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-07-24.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import UIKit

class Quarantile {
    fileprivate func getMean(_ sortedArray: [Int]) -> Int {
        var q2 = 0
        if sortedArray.count%2 == 0 {
            q2 = (sortedArray[(sortedArray.count/2)-1] + sortedArray[(sortedArray.count/2)] ) / 2
        }
        else {
            q2 = sortedArray[sortedArray.count/2]
        }
        return q2
    }
    
    func findQuarantile(array : [Int]) -> (Int, Int, Int) {
        
        let sortedArray = array.sorted()
        let q2 = getMean(sortedArray)
        
        let firstPart = Array(sortedArray.prefix(sortedArray.count/2))
        let lastPart = Array (sortedArray.suffix(sortedArray.count/2))
        
        let q1 = getMean(firstPart)
        let q3 = getMean(lastPart)
        
        return (q1, q2, q3)
    }
    
}
