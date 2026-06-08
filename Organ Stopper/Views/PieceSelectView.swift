//
//  PieceSelectView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/5/26.
//

import SwiftUI

struct PieceSelectView: View {
    @EnvironmentObject var pieceService: PieceService
    var pieces: [Piece] = []
    
    @State private var pieceSelection: Piece?
    
    var body: some View {
        VStack {
            Text("Piece Select")
            List(pieces.indices) { index in
                Button(pieces[index].name ?? "Piece \(index + 1)") {
                    pieceSelection = pieces[index]
                }
            }
        }
        .navigationDestination(item: $pieceSelection) { selection in
            SchemeSelectView(piece: selection)
        }
        .task { [weak self] in
            self?.pieces = await pieceService.getPieces()
        }
    }
}

#Preview {
    PieceSelectView()
}
