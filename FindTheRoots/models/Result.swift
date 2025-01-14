//
//  Result.swift
//  FindTheRoots
//
//  Created by Hannu Packalen on 2025-01-14.
//

import Foundation

struct Result: Identifiable  {
    let id = UUID()
    let a: Double
    let b: Double
    let c: Double
    let roots: String
}


let resultsForPreview = Result ( a: 1,
                                 b: -6,
                                 c: 8,
                                 roots:"x ≈ 2.00, x ≈ 4.00")
                                 
