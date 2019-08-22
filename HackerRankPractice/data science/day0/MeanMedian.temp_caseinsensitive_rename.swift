//
//  ViewController.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-07-24.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import UIKit

class MeanMedian: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let array = [10,40,30,50,20]
        let array2 =  [1,2,3,4,5]
        
        let array3 = [10,40,30,50,20,10,40,30,50,20]
        let array4 = [1,2,3,4,5,6,7,8,9,10]
        print(String(format: "%.1f", findMean2(mainArray: array3, weightedArray: array4)))
    }
    
    func findMean2(mainArray: [Int], weightedArray: [Int]) -> Double {
        var sum1 = 0
        var sum2 = 0
        
        for (offset, element) in mainArray.enumerated() {
            let tmp = element*weightedArray[offset]
            sum1 = sum1 + tmp
            sum2 = sum2 + weightedArray[offset]
        }

        return Double(sum1)/Double(sum2)
    }
    
    func findMean(a: [Int]) -> Double {
        var mean = 0
        for item in a {
            mean = mean + item
        }
        let result = Double(mean)/Double(a.count)
        return result
    }
    func findMedian(a: [Int]) -> Double {
        var arrayVar = a.sorted()
        
        var median : Double = 0.0
        if (arrayVar.count % 2 == 0) {
            median = (Double(arrayVar[arrayVar.count/2]) + Double(arrayVar[arrayVar.count/2 - 1]))/2
        }
        else {
            median = Double(arrayVar[arrayVar.count/2])/2
        }
        return median
    }
    func findMode(a: [Int]) -> Int {
        
        var countArray = [Int : Int]()
        
        for item in a {
            countArray[item] = (countArray[item] ?? 0) + 1
        }
        
        let max = countArray.max(by: { (a1, a2) -> Bool in
            a1.value < a2.value
        })
        
        let withMaxValue = countArray.filter { (a1) -> Bool in
            a1.value == max?.value
        }
        
        return withMaxValue.min(by: { (b1, b2) -> Bool in
            b1 < b2
        })?.key ?? 0
    }
}
