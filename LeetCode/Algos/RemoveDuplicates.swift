//
//  RemoveDuplicates.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2020-12-29.
//

import Foundation



public func removeDuplicates(_ nums: inout [Int]) -> Int {
    var i = 1
    while i <= nums.count-1 {
        if nums[i] == nums[i-1] {
            nums.remove(at: i)
        } else {
            i += 1
        }
    }
    return nums.count
}

