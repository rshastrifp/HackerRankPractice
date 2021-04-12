//
//  ImplementStrStr.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2021-01-02.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if haystack == needle || haystack.hasPrefix(needle) {
        return 0
    }
    
    if !Set(haystack).isSuperset(of: Set(needle)) {
        return -1
    }
    
    if (!haystack.contains(needle)) || haystack.isEmpty {
        return -1
    }
    
    let firstHalf = haystack.components(separatedBy: needle)[0]
    
    if firstHalf.count != 0 {
        return firstHalf.count
    }
    
    return -1
}
