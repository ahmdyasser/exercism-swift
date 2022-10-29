//
//  Triangle.swift
//  Exercism
//
//  Created by Ahmad Yasser on 29/10/2022.
//

import Foundation

struct Triangle {
    private(set) var kind: String
    
    init(_ x: Double, _ y: Double, _ z: Double) {
        let arr = [x, y, z]
        var counter = 0
        
        for i in arr {
            if i == x {
                counter += 1
            }
        }
        
        if counter == 3 {
            kind = "Equilateral"
        } else if counter == 2 {
            kind = "Isosceles"
        } else {
            kind = "Scalene"
        }
        
    }
}
