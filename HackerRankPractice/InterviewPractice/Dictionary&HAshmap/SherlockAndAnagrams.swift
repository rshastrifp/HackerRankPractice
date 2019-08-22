//
//  SherlockAndAnagrams.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-07-31.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class SherlockAndAnagrams {
    
    // Complete the twoStrings function below.
    
    func hasAllCommonCharacters1(s1: String, s2: String) -> Bool {
        if s1.count == 0 {
            return false
        }
        let s1Set = Set(s1.map {$0})
        let s2Set = Set(s2.map {$0})
        
        if s1Set == s2Set && s1.count == s2.count{
            for char in s1Set {
                if !(s1.filter { $0 == char }.count == s2.filter{ $0 == char }.count) {
                    return false
                }
            }
            return true
        }
        return false
    }

    func sherlockAndAnagrams1(str : String) -> Int {
        var resultCount = 0
        
        for size in 1...str.count-1{
             for loopCount in 0...str.count-2 {
                if (loopCount+size > str.count) {
                    break
                }
                let str1 = str[loopCount..<loopCount+size]
                for movingIndex in loopCount+1...str.count-1 {
                    if (movingIndex+size > str.count) {
                        break
                    }
                    let str2 = str[movingIndex..<movingIndex+size]
                    if (str1.count != str2.count) {
                        continue
                    }
                    if (hasAllCommonCharacters1(s1: str1, s2: str2)) {
                        resultCount = resultCount + 1
                    }
                }
            }
        }
        return resultCount
    }
}

/*
 Two strings are anagrams of each other if the letters of one string can be rearranged to form the other string. Given a string, find the number of pairs of substrings of the string that are anagrams of each other.
 
 For example , the list of all anagrammatic pairs is  at positions  respectively.
 
 Function Description
 
 Complete the function sherlockAndAnagrams in the editor below. It must return an integer that represents the number of anagrammatic pairs of substrings in .
 
 sherlockAndAnagrams has the following parameter(s):
 
 s: a string .
 Input Format
 
 The first line contains an integer , the number of queries.
 Each of the next  lines contains a string  to analyze.
 
 Constraints
 
 
 
 String  contains only lowercase letters  ascii[a-z].
 
 Output Format
 
 For each query, return the number of unordered anagrammatic pairs.
 
 Sample Input 0
 
 2
 abba
 abcd
 Sample Output 0
 
 4
 0
 Explanation 0
 
 The list of all anagrammatic pairs is  and  at positions  and  respectively.
 
 No anagrammatic pairs exist in the second query as no character repeats.
 
 Sample Input 1
 
 2
 ifailuhkqq
 kkkk
 Sample Output 1
 
 3
 10
 Explanation 1
 
 For the first query, we have anagram pairs  and  at positions  and respectively.
 
 For the second query:
 There are 6 anagrams of the form  at positions  and .
 There are 3 anagrams of the form  at positions  and .
 There is 1 anagram of the form  at position .
 
 Sample Input 2
 
 1
 cdcd
 Sample Output 2
 
 5
 Explanation 2
 
 There are two anagrammatic pairs of length :  and .
 There are three anagrammatic pairs of length :  at positions  respectively.
 
 */

