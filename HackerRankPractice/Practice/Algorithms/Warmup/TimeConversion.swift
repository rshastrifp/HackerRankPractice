//
//  TimeConversion.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2020-02-08.
//  Copyright © 2020 Ronak Shastri. All rights reserved.
//

import Foundation

func timeConversion(s: String) -> String {
    let arr = s.split(separator: ":")
    let ampm = String(arr.last?.suffix(2) ?? "")
    let seconds = String(arr.last?.prefix(2) ?? "")
    let minutes = String(arr[1].prefix(2))
    let hours = String(arr.first?.prefix(2) ?? "")
    
    var hoursNew = 00
    if (hours != "12") {
        hoursNew = (Int(hours) ?? 0) + (ampm == "PM" ? 12 : 0)
    }
    else {
        hoursNew = (Int(hours) ?? 0) - (ampm == "AM" ? 12 : 0)
    }
    
    return String(format:"%02d:%@:%@",hoursNew, minutes, seconds)
}
