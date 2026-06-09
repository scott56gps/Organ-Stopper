//
//  PieceSelectView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/5/26.
//

import SwiftUI

struct PieceSelectView: View {
    @EnvironmentObject var pieceService: PieceService
    @State var pieces: [Piece] = []
    @State private var pieceSelection: Piece?
    
    var body: some View {
        VStack {
            Text("Piece Select")
            List {
                ForEach(pieces.indices, id: \.self) { index in
                    Button(pieces[index].name) {
                        pieceSelection = pieces[index]
                    }
                }
            }
        }
        .navigationDestination(item: $pieceSelection) { piece in
            if piece.stopSchemes.count == 1 {
                let stopScheme = piece.stopSchemes[0]
                CueSelectView(schemeId: stopScheme.id, cues: stopScheme.stopCues)
            } else {
                SchemeSelectView(piece: piece)
            }
        }
        .task {
            pieces = await pieceService.getPieces()
        }
    }
}

#Preview {
    PieceSelectView()
}
