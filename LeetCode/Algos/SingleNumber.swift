//
//  SingleNumber.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2020-12-30.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var modNums = nums
    while modNums.count > 1 {
        var i = 0
        while i <= modNums.count-1 {
            var matched = false
            var j = modNums.count-1
            while j > i {
                if modNums[i] == modNums[j] {
                    modNums.remove(at: j)
                    matched = true
                    break
                }
                j -= 1
            }
            if matched {
                modNums.remove(at: i)
                i += 1
                break
            } else {
                return modNums[i]
            }
        }
    }
    return modNums[0]
}

func singleNumber2(_ nums: [Int]) -> Int {
    var a = 0
    for item in nums {
        a ^= item
    }
    return a
}
