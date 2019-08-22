//
//  MarkAndToys.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-08-20.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class MarkAndToys {
    
    // Complete the maximumToys function below.
    func maximumToys(prices: [Int], k: Int) -> Int {
        var totalBill = 0
        
        let sortedPrices = prices.sorted()
        for (index,p) in sortedPrices.enumerated() {
            if (totalBill + p) <= k {
                totalBill = totalBill + p
            }
            else {
                return index
            }
        }
        return prices.count
    }
    
}


/*
Mark and Jane are very happy after having their first child. Their son loves toys, so Mark wants to buy some. There are a number of different toys lying in front of him, tagged with their prices. Mark has only a certain amount to spend, and he wants to maximize the number of toys he buys with this money.

Given a list of prices and an amount to spend, what is the maximum number of toys Mark can buy? For example, if  and Mark has  to spend, he can buy items  for , or  for  units of currency. He would choose the first group of  items.

Function Description

Complete the function maximumToys in the editor below. It should return an integer representing the maximum number of toys Mark can purchase.

maximumToys has the following parameter(s):

prices: an array of integers representing toy prices
k: an integer, Mark's budget
Input Format

The first line contains two integers,  and , the number of priced toys and the amount Mark has to spend.
The next line contains  space-separated integers

Constraints




A toy can't be bought multiple times.

Output Format

An integer that denotes the maximum number of toys Mark can buy for his son.
    
    Sample Input
    
    7 50
    1 12 5 111 200 1000 10
    Sample Output
    
    4
    Explanation
    
    He can buy only  toys at most. These toys have the following prices: .
 */
