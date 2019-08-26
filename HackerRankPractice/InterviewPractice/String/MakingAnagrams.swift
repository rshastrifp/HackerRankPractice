//
//  MakingAnagrams.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-08-26.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class MakingAnagrams {
    // Complete the makeAnagram function below.
    func makeAnagram(a: String, b: String) -> Int {
        var deleteCount = 0
        
        let shorterStr = a.count<=b.count ? a : b
        let longerStr = a.count>b.count ? a : b
        
        let shortCharSet = Set(shorterStr.map({ (char) -> Character in
            return char
        }))
        
        let longCharSet = Set(longerStr.map({ (char) -> Character in
            return char
        }))
        
        let fullSetTocheck = shortCharSet.union(longCharSet)
        
        fullSetTocheck.forEach { (myChar) in
            let longerCount = longerStr.filter({ (prmChar) -> Bool in
                prmChar == myChar
            }).count
            let shorterCount = shorterStr.filter({ (prmChar) -> Bool in
                prmChar == myChar
            }).count
            
            deleteCount = deleteCount + abs(shorterCount - longerCount)
        }
        
        return deleteCount
    }
    
}




/*
 Alice is taking a cryptography class and finding anagrams to be very useful. We consider two strings to be anagrams of each other if the first string's letters can be rearranged to form the second string. In other words, both strings must contain the same exact letters in the same exact frequency For example, bacdc and dcbac are anagrams, but bacdc and dcbad are not.
 
 Alice decides on an encryption scheme involving two large strings where encryption is dependent on the minimum number of character deletions required to make the two strings anagrams. Can you help her find this number?
 
 Given two strings,  and , that may or may not be of the same length, determine the minimum number of character deletions required to make  and  anagrams. Any characters can be deleted from either of the strings.
 
 For example, if  and , we can delete  from string  and  from string  so that both remaining strings are and  which are anagrams.
 
 Function Description
 
 Complete the makeAnagram function in the editor below. It must return an integer representing the minimum total characters that must be deleted to make the strings anagrams.
 
 makeAnagram has the following parameter(s):
 
 a: a string
 b: a string
 Input Format
 
 The first line contains a single string, .
 The second line contains a single string, .
 
 Constraints
 
 The strings  and  consist of lowercase English alphabetic letters ascii[a-z].
 Output Format
 
 Print a single integer denoting the number of characters you must delete to make the two strings anagrams of each other.
 
 Sample Input
 
 cde
 abc
 Sample Output
 
 4
 Explanation
 
 We delete the following characters from our two strings to turn them into anagrams of each other:
 
 Remove d and e from cde to get c.
 Remove a and b from abc to get c.
 We must delete  characters to make both strings anagrams, so we print  on a new line.
 */
