//
//  PieceService.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/8/26.
//

import Foundation

class PieceService: ObservableObject {
    func getPieces() async -> [Piece] {
        return Piece.previewData
    }
}
