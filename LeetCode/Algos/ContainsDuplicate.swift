//
//  ContainsDuplicate.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2020-12-29.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    let numSet = Set(nums)
    if numSet.count < nums.count {
        return false
    }
    return true
}
