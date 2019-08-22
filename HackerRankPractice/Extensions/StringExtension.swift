//
//  StringExtension.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-07-31.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        if (bounds.upperBound < bounds.lowerBound || bounds.upperBound > self.count) {
            return ""
        }
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    
    subscript (bounds: CountableRange<Int>) -> String {
        if (bounds.upperBound <= bounds.lowerBound || bounds.upperBound > self.count) {
            return ""
        }
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}

