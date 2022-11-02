//
//  Triangle.swift
//  Exercism
//
//  Created by Ahmad Yasser on 29/10/2022.
//

import Foundation

enum TriangleKind {
    static let error = "ErrorKind"
    static let isosceles = "Isosceles"
    static let scalene = "Scalene"
    static let equilateral = "Equilateral"
}

struct Triangle {
    private(set) var kind: String
    
    init(_ x: Double, _ y: Double, _ z: Double) {
        let arr = [x, y, z].sorted()
        let uniqueSet = Set(arr)
        
        if arr.contains(where: { $0 <= 0 }) {
            kind = TriangleKind.error
            return
        }
        
        guard arr[0] + arr[1] >= arr[2] else {
            kind = TriangleKind.error
            return
        }
        
        switch uniqueSet.count {
        case 1:
            kind = TriangleKind.equilateral
        case 2:
            kind = TriangleKind.isosceles
        case 3:
            kind = TriangleKind.scalene
        default:
            kind = TriangleKind.error
            
        }
    }
}
