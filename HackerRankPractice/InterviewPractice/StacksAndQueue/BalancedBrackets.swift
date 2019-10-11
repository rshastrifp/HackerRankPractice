//
//  BalancedBrackets.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-09-19.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

fileprivate func areTheyMatch (x:Character, y :Character) -> Bool {
    return ((x == "{") && (y=="}")) || ((x == "[") && (y=="]")) || ((x == "(") && (y==")"))
}

fileprivate func isItOpeningBracket (x:Character) -> Bool {
    return (x == "{") || (x == "[") || (x == "(")
}

func isBalanced(s: String) -> String {
    var openingBracketStack = [Character]()
    var result = "YES"
    
    for (index, prm) in s.enumerated() {
        if (index == 0) {
            openingBracketStack.append(prm)
            continue
        }
        if (isItOpeningBracket(x: prm)) {
            openingBracketStack.append(prm)
            continue
        }
        
        guard let lastEnteredBracket = openingBracketStack.last else {
            result = "NO"
            return result
        }
        
        if (areTheyMatch(x:lastEnteredBracket , y: prm)) {
            openingBracketStack.removeLast()
        }
        else {
            result = "NO"
            return result
        }
    }
    
    return result
}
