//
//  MaxProfit.swift
//  LeetCodeAlgo
//
//  Created by Ronak Shahstri on 2020-12-29.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    return doMaxProfit(prices, s: 0)
}

func doMaxProfit(_ prices: [Int], s: Int) -> Int {
    guard s <= prices.count else {
        return 0
    }
    
    var max = 0
    for x in s..<prices.count {
        var maxProfit = 0
        for y in x+1..<prices.count {
            if prices[y] > prices[x] {
                var profit = doMaxProfit(prices, s: y+1)
                let currentProfit = prices[y] - prices[x]
                profit += currentProfit
                if profit > maxProfit {
                    maxProfit = profit
                }
            }
        }
        if maxProfit > max {
            max = maxProfit
        }
    }
    return max
}

func maxProfit2(_ prices: [Int]) -> Int {
    var profit = 0
    guard prices.count > 1 else {
        return 0
    }
    
    for i in 1...prices.count-1 {
        if (prices[i] > prices[i-1]) {
            profit += prices[i] - prices[i-1]
        }
    }
    return profit
}
