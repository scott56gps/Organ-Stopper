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
        .navigationDestination(item: $pieceSelection) { selection in
            SchemeSelectView(piece: selection)
        }
        .task {
            pieces = await pieceService.getPieces()
        }
    }
}

#Preview {
    PieceSelectView()
}
