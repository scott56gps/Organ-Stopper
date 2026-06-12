//
//  DivisionView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/26.
//

import SwiftUI

struct DivisionView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var division: Division
    
    var body: some View {
        VStack {
            Text(division.name)
            Spacer()
            LazyVGrid(columns: columns) {
                ForEach(division.stops, id: \.self) { stop in
                    Button("\(stop.pitch ?? "")' \(stop.name)") {
                        print("hola")
                    }
                    .frame(maxWidth: .infinity, minHeight: 80)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

#Preview {
    DivisionView(division: Division.previewData[.soft, default: []][0])
}
