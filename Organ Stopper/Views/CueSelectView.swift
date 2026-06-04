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
    
    @State private var selectedCueDetail: StopCueDetail?
    
    var body: some View {
        VStack {
            Text("Please select a cue:")
            List(cues, id: \.id) { cue in
                Button(cue.label ?? "Cue") {
                    Task {
                        selectedCueDetail = await schemeService.getCueDetail(cue.id)
                    }
                }
                .navigationDestination(item: $selectedCueDetail) { detail in
                    CueDisplayView(cues: <#T##[StopCueDetail]#>, currentCue: <#T##StopCueDetail#>)
                }
            }
        }
    }
}

#Preview {
    CueSelectView()
}
