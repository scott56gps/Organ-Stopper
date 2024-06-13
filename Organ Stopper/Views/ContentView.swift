//
//  ContentView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import SwiftUI

struct ContentView: View {
    let organ = Organ.samples[0]
    
    var body: some View {
        VStack {
            Text(organ.name)
            List {
                ForEach(organ.divisions, id: \.name) { division in
                    Section(header: DivisionHeader(divisionName: division.name)) {
                            
//                        DisclosureGroup(division.name) {
                            ForEach(division.stops, id: \.name) { stop in
                                Text("\(stop.length.rawValue)' \(stop.name)")
                            }
//                        }
                    }
                    .listRowBackground(Color.blue.ignoresSafeArea([.all]))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
