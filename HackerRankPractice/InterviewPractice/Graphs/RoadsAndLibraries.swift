//
//  RoadsAndLibraries.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-09-21.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

// Complete the roadsAndLibraries function below.
func roadsAndLibraries(n: Int, c_lib: Int, c_road: Int, cities: [[Int]]) -> Int {
    if c_lib < c_road {
        return c_lib*n
    }
    else {
        var existingCircuits = [Set<Int>]()
        let firstCircuit = Set(cities[0])
        existingCircuits.append(firstCircuit)
        
        for i in 1...cities.count-1 {
            let newRoute = Set(cities[i])
            mergeSets(exitstingSets: &existingCircuits, newSet: newRoute)
        }
        return findCost(totalCircuits: existingCircuits, cityCount: n, libCost: c_lib, roadCost: c_road)
    }
}

func findCost(totalCircuits: [Set<Int>], cityCount:Int, libCost:Int, roadCost:Int) -> Int {
    var totalRoadcost = 0
    totalCircuits.forEach { (cities) in
        totalRoadcost = totalRoadcost + cities.count-1
    }
    let alianCityCost = findAlianCircuits(totalCircuits: totalCircuits, cityCount: cityCount)*libCost
    return (totalCircuits.count*libCost) + (totalRoadcost) + (alianCityCost)
}

func findAlianCircuits(totalCircuits: [Set<Int>], cityCount:Int) -> Int {
    var alianCityCircuits = Set<Int>()
    
    for i in 1...cityCount {
        alianCityCircuits.insert(i)
    }
    
    for ciruit in totalCircuits {
        alianCityCircuits = alianCityCircuits.subtracting(ciruit)
    }
    
    return alianCityCircuits.count
}

func mergeSets( exitstingSets :inout [Set<Int>], newSet :Set<Int>) {
    for (i) in 0...exitstingSets.count-1 {
        let intersectElemets = newSet.intersection(exitstingSets[i])
        if (intersectElemets.count > 0) {
            exitstingSets[i] = exitstingSets[i].union(newSet)
            return
        }
    }
    exitstingSets.append(newSet)
}

