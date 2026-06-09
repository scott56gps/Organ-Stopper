//
//  Piece.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/3/26.
//

struct Piece: Hashable {
    let id: Int
    let name: String
    let composer: String?
    let stopSchemes: [StopScheme]
}

extension Piece {
    static var previewData: [Piece] {
        [
            Piece(id: 1, name: "Wachet Auf", composer: "JS Bach", stopSchemes: StopScheme.previewData)
        ]
    }
}
