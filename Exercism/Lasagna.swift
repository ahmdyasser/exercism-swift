//
//  Lasagna.swift
//  Exercism
//
//  Created by Ahmad Yasser on 30/10/2022.
//

import Foundation

let expectedMinutesInOven = 40

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}
func preparationTimeInMinutes(layers: Int) -> Int {
    2 * layers
}

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    let remainingTime = preparationTimeInMinutes(layers: layers)
    let totalTime = elapsedMinutes + remainingTime
    
    return totalTime
}
