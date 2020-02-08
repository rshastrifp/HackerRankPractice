//
//  BirthdaycakeCandles.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2020-02-08.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//

import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
    var count = 0
    var maxHeight = ar[0]
    for height in ar {
        if (height == maxHeight) {
            count += 1
        }
        else if (height > maxHeight) {
            maxHeight = height
            count = 1
        }
    }
    
    return count
}
