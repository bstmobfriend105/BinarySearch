//
//  BinarySearch.swift
//  BinarySearch
//
//  Created by User on 1/6/20.
//  Copyright © 2020 User. All rights reserved.
//

func binarySearch(in numbers: [Int], for value: Int) -> Int?
{
    var left = 0
    var right = numbers.count - 1

    while left <= right {

        let middle = Int(floor(Double(left + right) / 2.0))

        if numbers[middle] < value {
            left = middle + 1
        } else if numbers[middle] > value {
            right = middle - 1
        } else {
            return middle
        }
    }

    return nil
}
