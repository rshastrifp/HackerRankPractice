//
//  CharacterExtension.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-08-30.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

extension Character
{
    func unicodeScalarCodePoint() -> UInt32
    {
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return scalars[scalars.startIndex].value
    }
}
