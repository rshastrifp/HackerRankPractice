//
//  Staircase.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2020-02-08.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//

import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> String {
    let result = ""
    var hashPrintCount = n
    while hashPrintCount > 0 {
        var temp = ""
        for i in 1...n {
            if (hashPrintCount <= i) {
                temp += "#"
            }
            else {
                temp += " "
            }
        }
        print(temp)
        hashPrintCount -= 1
    }
    
    return result
}
