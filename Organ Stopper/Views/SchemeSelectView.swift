//
//  SchemeSelectScreen.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/5/26.
//

import SwiftUI

struct SchemeSelectView: View {
    let piece: Piece
    
    @State var selectedScheme: StopScheme?
    
    var body: some View {
        VStack {
            Text("Select a scheme for \(piece.name)")
            BottomAnchoredScrollView(
                items: piece.stopSchemes,
                id: \.self
            ) { scheme in
                NavigationLink(value: scheme) {
                    Text(scheme.name)
                }
                .onTapGesture {
                    selectedScheme = scheme
                }
            }
        }
        .navigationDestination(item: $selectedScheme) { scheme in
            CueSelectView(schemeId: scheme.id, cues: scheme.stopCues)
        }
    }
}
