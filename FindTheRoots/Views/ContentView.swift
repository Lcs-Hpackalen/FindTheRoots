//
//  ContentView.swift
//  FindTheRoots
//
//  Created by Hannu Packalen on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    //Mark: Stored properties
    @State var valueA: Double = 3.0
    @State var valueB: Double = 2.0
    @State var valueC: Double = 1.0
    //Mark: Computed properties
    
    var result: String {
        
        let discriminant = valueB * valueB - 4 * valueA * valueC
        
        if discriminant < 0 {
            return "No real roots"
        } else {
            let x1 = (valueB * -1 + discriminant.squareRoot()) / (2 * valueA)
            let x2 = (valueB * -1 - discriminant.squareRoot()) / (2 * valueA)
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
        }
    
    var body: some View {
        VStack() {
            HStack {
                Text ("Find the Roots")
                    .font (Font.custom( "Times New Roman", size: 44))
                Spacer()
            }
            Image("RootsCalculation")
                .resizable()
                .scaledToFit()
            Divider()
            Image("StandardForm")
                .resizable()
                .scaledToFit()
            HStack{
                Text ("a: \(valueA.formatted(.number.precision(.fractionLength(1))))")
                    .padding()
                Spacer()
                Text ("b: \(valueB.formatted(.number.precision(.fractionLength(1))))")
                Spacer()
                Text ("c: \(valueC.formatted(.number.precision(.fractionLength(1))))")
                    .padding()
            }
            HStack {
                Slider(value: $valueA, in: -10...10)
                Slider(value: $valueB, in: -10...10)
                Slider(value: $valueC, in: -10...10)
            }
            Text("\(result)").font (Font.custom( "Times New Roman", size: 34))
        }
        .padding()
    }
}

#Preview {
    RootsCalculatorView()
}
