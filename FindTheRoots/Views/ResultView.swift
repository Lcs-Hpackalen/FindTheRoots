//
//  ResultView.swift
//  FindTheRoots
//
//  Created by Hannu Packalen on 2025-01-14.
//

import SwiftUI

struct ResultView: View {
    
    let somePriorResult: Result
    
    var body: some View {
        VStack(spacing: 10) {
            
            HStack(spacing:30){
                Text ("a: \(a.formatted(.number.precision(.fractionLength(1))))")
                    .padding()
                Spacer()
                Text ("b: \(b.formatted(.number.precision(.fractionLength(1))))")
                Spacer()
                Text ("c: \(c.formatted(.number.precision(.fractionLength(1))))")
                    .padding()
            }
            
            Text (somePriorResult.roots) .font (Font.custom( "Times New Roman", size: 44))
          }
        .padding(.horizontal, 10)
        .padding(.vertical,15)
    }
}

#Preview {
    ResultView(somePriorResult: resultsForPreview  )
}
