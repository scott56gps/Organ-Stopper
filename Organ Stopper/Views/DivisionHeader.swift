//
//  DivisionHeader.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import SwiftUI

struct DivisionHeader: View {
    var divisionName: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(divisionName)
                .fontWeight(.bold)
            Spacer()
        }
        .foregroundStyle(Color.yellow)
        .background(Color(red: 161 / 255, green: 42 / 255, blue: 35 / 255))
    }
}

#Preview {
    DivisionHeader(divisionName: "Great")
}
