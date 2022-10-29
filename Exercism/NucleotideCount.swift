//
//  NucleotideCount.swift
//  Exercism
//
//  Created by Ahmad Yasser on 28/10/2022.
//

import Foundation

struct DNA {
    private let strand: String
    private var isValid: Bool
    private let nucleotides = ["T", "A", "C", "G"]
    
    init?(strand: String) {
        self.strand = strand
        isValid = strand.filter { $0 != "T" && $0 != "A" && $0 != "C" && $0 != "G"}.count > 0
        
        if !isValid && !strand.isEmpty { return nil }
    }

    func counts() -> [String: Int] {
        var list: [String: Int] = [ "A": 0, "T": 0, "C": 0, "G": 0]
        
        for char in strand {
            list[String(char)]! += 1
        }
        return list
    }

    func count(_ char: String) -> Int? {
        if strand.isEmpty { return 0 }
        
        var count = 0
        guard isValid else { return nil }

        for _char in strand {
            if String(_char) == char {
                count += 1
            }
        }

        if count == 0 {
            return nil
        }

        return count
    }
}
