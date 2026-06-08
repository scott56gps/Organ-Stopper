//
//  ContentView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import SwiftUI

struct CueDisplayView: View {
    let cues: [StopCueDetail]
    
    @State var currentIndex: Int
    var currentCue: StopCueDetail { cues[currentIndex] }

    var body: some View {
        VStack {
            Text(currentCue.label ?? "Cue \(currentIndex + 1)")
            BottomAnchoredScrollView {
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
            HStack(spacing: 0) {
                Button("<") {
                    regressCue()
                }
                .buttonStyle(RoundedButtonStyle())
                Spacer()
                Button(">") {
                    advanceCue()
                }
                .buttonStyle(RoundedButtonStyle())
            }
            .padding()
        }
    }
    
    private struct RoundedButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(Color.accentColor.opacity(configuration.isPressed ? 0.7 : 1))
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
        }
    }
    
    func advanceCue() {
        currentIndex = (currentIndex < cues.count - 1) ? currentIndex + 1 : 0
    }
    func regressCue() {
        currentIndex = currentIndex == 0 ? cues.count - 1 : currentIndex - 1
    }
}

#Preview {
    let previewData = StopCueDetail.previewData
    CueDisplayView(cues: previewData, currentIndex: 0)
}
