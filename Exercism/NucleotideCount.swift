//
//  NucleotideCount.swift
//  Exercism
//
//  Created by Ahmad Yasser on 28/10/2022.
//

import Foundation

struct DNA {
    private let strand: String
    private let allowedChars: [Character] = ["T", "A", "C", "G"]
    
    init?(strand: String) {
        self.strand = strand
        guard strand.uppercased().filter({ !allowedChars.contains($0) }).isEmpty else { return nil }
    }

    func counts() -> [String: Int] {
        allowedChars.reduce(into: [String: Int]()) { dict, char in
            dict["\(char)"] = count(char)
        }
    }

    func count(_ char: Character) -> Int {
        strand.filter { $0 == char }.count
    }
}
