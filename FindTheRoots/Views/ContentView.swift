//
//  ContentView.swift
//  FindTheRoots
//
//  Created by Hannu Packalen on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    //Mark: Stored properties
    var valueA: Double = 3.0
    var valueB: Double = 2.0
    var valueC: Double = 1.0
    //Mark: Computed properties
    var body: some View {
        VStack(content: .top) {
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
        }
        .padding()
    }
}

#Preview {
    RootsCalculatorView()
}
