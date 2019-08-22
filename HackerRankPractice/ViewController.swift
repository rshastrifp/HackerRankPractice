//
//  ViewController.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-07-24.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        print(repeatedString(s: "abcade", n: 1))
        print(minimumSwaps4(arr: [4,3,1,2]))
    }
    
    // Complete the minimumSwaps function below.
    func minimumSwaps4(arr: [Int]) -> Int {
        var swap = 0
        var arrVar = arr
        
        for index in 1...arrVar.count {
            if (index != arrVar[index-1]) {
                swap = swap + 1
            }
        }
        
        return (swap-1)
    }

    // Complete the minimumSwaps function below.
    func minimumSwaps3(arr: [Int]) -> Int {
        var swap : Double = 0
        var arrVar = arr
        
        let sortedArray = arrVar.sorted()

        for (index,num) in sortedArray.enumerated() {
            if (num != arrVar[index]) {
                swap = swap + 1
            }
        }
        
        return Int(swap-1)
    }
    
    // Complete the minimumSwaps function below.
    func minimumSwaps2(arr: [Int]) -> Int {
        var swap = 0
        var arrVar = arr
        
        for donePoint in stride(from: 0, to: arrVar.count-1, by: 1) {
            var rememberedLowerValue = arrVar[donePoint]
            var rememberedLoverPosition = donePoint
            
            var needToSwap = false
            
            for index in stride(from: donePoint+1, to: arrVar.count, by: 1) {
                if (rememberedLowerValue > arrVar[index]){
                    rememberedLowerValue = arrVar[index]
                    rememberedLoverPosition = index
                    needToSwap = true
                }
            }
            if (needToSwap) {
                swap = swap + 1
                arrVar[rememberedLoverPosition] = arrVar[donePoint]
                arrVar[donePoint] = rememberedLowerValue
            }
        }
        return swap
    }
    
    func minimumSwaps(arr: [Int]) -> Int {
        var swap = 0
        var arrVar = arr
        
        for donePoint in stride(from: arrVar.count, to: 0, by: -1) {
            for index in stride(from: 0, to: donePoint-1, by: 1) {
                if (arrVar[index] > arrVar[index+1]) {
                    swap = swap + 1
                    let temp = arrVar[index]
                    arrVar[index] = arrVar[index + 1]
                    arrVar[index + 1] = temp
                }
            }
        }
        return swap
    }
    
    // Complete the repeatedString function below.
    fileprivate func findAinStr(_ fullS: String) -> Int {
        let tok =  fullS.components(separatedBy:"a")
        return tok.count-1
    }
    
    func repeatedString(s: String, n: Int) -> Int {
        let sVar = s
        let characters = Array(s)
        var fullS = ""
        
        let x : Int = n / s.count
        let y : Int = n % s.count
        
        let subStr = sVar.prefix(y)
        
        return (x*findAinStr(sVar)+findAinStr(String(subStr)))
        
//        for _ in stride(from: 0, to: (x), by: 1) {
//            fullS = fullS + s
//        }
//
//        if (y == n && sVar == "a") {
//            return findAinStr(sVar)
//        }
//        for index in stride(from: 0, to: (y), by: 1) {
//            fullS.append(characters[index])
//        }
//
//        return findAinStr(fullS)
    }


    
    
}

