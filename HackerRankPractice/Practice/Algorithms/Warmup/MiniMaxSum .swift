//
//  MiniMaxSum .swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-09-18.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class MiniMaxSum {
    
    
    // Complete the miniMaxSum function below.
    func miniMaxSum(arr: [Int]) -> Void {
        print(findMinMax(arr: arr))
    }
    
    func findMinMax(arr: [Int]) -> String {
        let arraySorted = arr.sorted()
        
        var min = 0
        var max = 0
        
        for (index,element) in arraySorted.enumerated() {
            if (index != arraySorted.count-1) {
                min = min + element
            }
            if (index != 0) {
                max = max + element
            }
        }
        
        return String(format: "%@ %@", String(min), String(max))
    }
}


