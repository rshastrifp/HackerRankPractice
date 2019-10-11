//
//  SherlockAndTheValidString.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-08-27.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class SherlockAndTheValidString {
    // Complete the isValid function below.
    func isValid(s: String) -> String {
        let charSet = Set(s)
        var shouldAllowed = true
        
        var countArray = [Int]()
        
        for offset in 0...charSet.count-1 {
            let count = s.filter({$0 == charSet[charSet.index(charSet.startIndex, offsetBy: offset)]}).count
            countArray.append(count)
        }
        
        var sortedCountArray = countArray.sorted()
        
        for index in 0...sortedCountArray.count-2 {
            for j in index+1...sortedCountArray.count-1 {
                if ((sortedCountArray[j] - sortedCountArray[index]) > 0) {
                    if ((sortedCountArray[j] - sortedCountArray[index]) == 1) {
                        if (shouldAllowed) {
                            sortedCountArray[j] = sortedCountArray[j] - 1
                            shouldAllowed = false
                            continue
                        }
                    }
                    if (sortedCountArray[j]==1 || sortedCountArray[index]==1) {
                        if (shouldAllowed) {
                            sortedCountArray[j] = sortedCountArray[j] - 1
                            shouldAllowed = false
                            break
                        }
                    }
                    return "NO"
                }
            }
        }
        return "YES"
    }

    
    
//    // Complete the isValid function below.
//    func isValid(s: String) -> String {
//        let charSet = Set(s)
//        var count = 0
//        var shouldAllow = true
//
//        var skipOne = false
//        for offset in 0...charSet.count-2 {
//            var firstCount = s.filter({$0 == charSet[charSet.index(charSet.startIndex, offsetBy: offset)]}).count
//            if (skipOne) {
//                firstCount = s.filter({$0 == charSet[charSet.index(charSet.startIndex, offsetBy: offset-1)]}).count
//            }
//            let secondCount = s.filter({$0 == charSet[charSet.index(charSet.startIndex, offsetBy: offset+1)]}).count
//
//            if (abs(firstCount - secondCount) == 0) {
//                continue
//            }
//            let isSecondDeleted = secondCount > firstCount ? true : false
//            if (isSecondDeleted) {
//                //Second delete case.
//                if (shouldAllow) {
//                    shouldAllow = false
//                }
//                else {
//                    return "NO"
//                }
//                if (secondCount - 1) == 0 {
//                    skipOne = true
//                }
//            }
//            else {
//                //First delete case
//                if (shouldAllow) {
//                    shouldAllow = false
//                }
//                else {
//                    return "NO"
//                }
//            }
//
//        }
//        return "YES"
//    }


/*
for (offset, element) in charSet.enumerated() {
    if (offset == 0) {
        count = s.filter({$0 == element}).count
    }
    else {
        let newCount = s.filter({$0 == element}).count
        let diff = (newCount - count)
        if (diff > 0) {
            if (diff == 1 && !hasAllowedOnce) {
                hasAllowedOnce = true
            }
            else {
                if (count == 1 && !hasAllowedOnce) {
                    hasAllowedOnce = true
                    continue
                }
                return "NO"
            }
        }
        else if (diff < 0) {
            if (diff == -1 && !hasAllowedOnce) {
                hasAllowedOnce = true
                count = newCount //Take smaller value.
            }
            else {
                if (newCount == 1 && !hasAllowedOnce) {
                    hasAllowedOnce = true
                    continue
                }
                return "NO"
            }
        }
        else {
            continue
        }
        
        //                if (abs(newCount - count) > 0) {
        //                    if (newCount == 1) {
        //                        hasAllowedOnce = true
        //                    }
        //                    else if (!hasAllowedOnce && abs(newCount - count) == 1) {
        //                        hasAllowedOnce = true
        //                        count = count > newCount ? newCount : count
        //                    }
        //                    else {
        //                        return "NO"
        //                    }
        //                }
    }

*/
}


/*
 Sherlock considers a string to be valid if all characters of the string appear the same number of times. It is also valid if he can remove just  character at  index in the string, and the remaining characters will occur the same number of times. Given a string , determine if it is valid. If so, return YES, otherwise return NO.
 
 For example, if , it is a valid string because frequencies are . So is  because we can remove one  and have  of each character in the remaining string. If  however, the string is not valid as we can only remove  occurrence of . That would leave character frequencies of .
 
 Function Description
 
 Complete the isValid function in the editor below. It should return either the string YES or the string NO.
 
 isValid has the following parameter(s):
 
 s: a string
 Input Format
 
 A single string .
 
 Constraints
 
 Each character
 Output Format
 
 Print YES if string  is valid, otherwise, print NO.
 
 Sample Input 0
 
 aabbcd
 Sample Output 0
 
 NO
 Explanation 0
 
 Given , we would need to remove two characters, both c and d  aabb or a and b  abcd, to make it valid. We are limited to removing only one character, so  is invalid.
 
 Sample Input 1
 
 aabbccddeefghi
 Sample Output 1
 
 NO
 Explanation 1
 
 Frequency counts for the letters are as follows:
 
 {'a': 2, 'b': 2, 'c': 2, 'd': 2, 'e': 2, 'f': 1, 'g': 1, 'h': 1, 'i': 1}
 
 There are two ways to make the valid string:
 
 Remove  characters with a frequency of : .
 Remove  characters of frequency : .
 Neither of these is an option.
 
 Sample Input 2
 
 abcdefghhgfedecba
 Sample Output 2
 
 YES
 Explanation 2
 
 All characters occur twice except for  which occurs  times. We can delete one instance of  to have a valid string.
 

 */
