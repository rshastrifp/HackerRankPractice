//
//  TheLoveLetterMystery.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-08-30.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class TheLoveLetterMystery {
    
    // Complete the theLoveLetterMystery function below.
    func theLoveLetterMystery(s: String) -> Int {
        var changeCount = 0
        let parts = getTwoParts(with: s)
        
        let firstArray = Array(parts.0)
        let secondArray = Array(parts.1.reversed())
        
        for item in 0...firstArray.count-1 {
            let first = UnicodeScalar(String(firstArray[item]))?.value ?? 0
            let second = UnicodeScalar(String(secondArray[item]))?.value ?? 0
            
            let diff = abs(Int(first) - Int(second))
            changeCount += diff
        }
        return changeCount
    }
    
    func getTwoParts(with prmStr : String) -> (String, String) {
        var fisrtPart = ""
        var secondPart = ""
        
        if prmStr.count%2 == 0 {
            fisrtPart = prmStr[0..<prmStr.count/2]
            secondPart = prmStr[prmStr.count/2..<prmStr.count]
        }
        else {
            fisrtPart = prmStr[0..<prmStr.count/2]
            secondPart = prmStr[prmStr.count/2+1..<prmStr.count]
        }
        
        return (fisrtPart,secondPart)
    }
    
}
