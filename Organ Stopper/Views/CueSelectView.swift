//
//  CueSelectView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/4/26.
//

import SwiftUI

struct CueSelectView: View {
    private struct CueSelection: Hashable {
        var details: [StopCueDetail]
        var index: Int
    }
    
    let schemeService: SchemeService
    let schemeId: Int
    let cues: [StopCue]
    
    @State private var allDetails: [StopCueDetail] = []
    @State private var cueSelection: CueSelection?
    
    var body: some View {
        VStack {
            Text("Please select a cue:")
            List(cues.indices, id: \.self) { index in
                Button(cues[index].label ?? "\(index + 1)") {
                    cueSelection = CueSelection(details: allDetails, index: index)
                }
            }
            .navigationDestination(item: $cueSelection) { selection in
                CueDisplayView(cues: selection.details, currentCue: selection.details[selection.index])
            }
            .task {
                allDetails = await schemeService.getCueDetails(schemeId: schemeId)
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
