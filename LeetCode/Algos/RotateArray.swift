//
//  RotateArray.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2020-12-29.
//

import Foundation

func findDuplicate(_ list: [Int]) -> Int {
    var ans = 0
    var listVar = list.reversed()
    var str = " sdfghjkl"
    var strReverse = str.reversed()
    
    for index in 0...list.count-1 {
        let item = list[index]
        ans ^= (item)
        if (ans == 0) {
            return item
        }
    }
    return ans
}

func rotate(_ nums: inout [Int], _ k: Int) {
    findDuplicate([1,2,3,4,5,1])
    guard nums.count > 1 && k != 0 else {
        return
    }
    for _ in 1...k {
        for j in 0...nums.count-1 {
            var temp = 0
            temp = nums[0]
            nums[0] = nums[j]
            nums[j] = temp
        }
    }
    print(nums)
}
