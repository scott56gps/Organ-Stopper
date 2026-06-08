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
