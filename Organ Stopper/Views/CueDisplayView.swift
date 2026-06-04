//
//  ContentView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import SwiftUI

struct CueDisplayView: View {
    let cues: [StopCueDetail]
    let currentIndex: Int
    
    var currentCue: StopCueDetail { cues[currentIndex] }

    var body: some View {
        VStack {
            Text(currentCue.label ?? "Cue \(currentIndex + 1)")
            List {
                ForEach(currentCue.divisions, id: \.name) { division in
                    Section(
                        header: DivisionHeader(divisionName: division.name)
                    ) {
                        ForEach(division.stops, id: \.name) { stop in
                            Text("\(stop.pitch ?? "")' \(stop.name)")
                        }
                    }
                    .listRowBackground(Color.blue.ignoresSafeArea([.all]))
                }
            }
        }
    }
}

#Preview {
    let previewData = StopCueDetail.previewData
    CueDisplayView(cues: previewData, currentIndex: 0)
}
