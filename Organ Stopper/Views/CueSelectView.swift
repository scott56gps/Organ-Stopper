//
//  CueSelectView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/4/26.
//

import SwiftUI

struct CueSelectView: View {
    let schemeService: SchemeService
    let schemeId: Int
    let cues: [StopCue]
    
    @State private var selectedCueDetailIndex: Int?
    @State private var fetchedCueDetails: [StopCueDetail]?
    
    var body: some View {
        VStack {
            Text("Please select a cue:")
            List(cues.enumerated(), id: \.id) { (index, cue) in
                Button(cue.label ?? "\(index + 1)") {
                    selectedCueDetailIndex = index
                    Task {
                        fetchedCueDetails = await schemeService
                            .getCueDetails(schemeId: schemeId)
                    }
                }
            }
            .navigationDestination(item: $fetchedCueDetails) { details in
                CueDisplayView(cues: details, currentCue: details[selectedCueDetailIndex])
            }
        }
    }
}

#Preview {
    NavigationStack {
        CueSelectView(
            schemeService: SchemeService(),
            schemeId: 1,
            cues: StopCue.previewData
        )
    }
}
