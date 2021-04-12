//
//  Anagram.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2020-12-30.
//

import Foundation


func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    if s.sorted() != t.sorted() {
        return false
    }
    
    return true
}
