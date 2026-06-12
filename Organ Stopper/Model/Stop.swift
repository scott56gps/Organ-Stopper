//
//  Stop.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import Foundation

struct Stop: Hashable {
    let id: Int
    let name: String
    let pitch: String?
    let family: StopFamily
}

extension Stop {
    enum PreviewType {
        case greatPrincipals
        case greatFlutes
        case swellPrincipals
        case swellFlutes
        case pedalPrincipals
        case pedalFlutes
    }
    static var previewData: [PreviewType: [Stop]] {
        [
            .greatPrincipals: [
                .init(id: 0, name: "Principal", pitch: "8", family: .Principal),
                .init(id: 1, name: "Octave", pitch: "4", family: .Principal),
            ],
            .greatFlutes: [
                .init(id: 2, name: "Hohlflote", pitch: "8", family: .Flute),
                .init(id: 3, name: "Chimney Flute", pitch: "4", family: .Flute),
                .init(id: 14, name: "Blockflote", pitch: "8", family: .Flute)
            ],
            .swellPrincipals: [
                .init(id: 4, name: "Diapason", pitch: "8", family: .Principal),
                .init(id: 5, name: "Principal", pitch: "4", family: .Principal),
                .init(id: 6, name: "Octavin", pitch: "2", family: .Principal),
            ],
            .swellFlutes: [
                .init(id: 7, name: "Bourdon", pitch: "16", family: .Flute),
                .init(id: 8, name: "Unda Maris", pitch: "8", family: .Flute),
                .init(id: 9, name: "Aeoline", pitch: "8", family: .Flute),
            ],
            .pedalPrincipals: [
                .init(id: 10, name: "Praestant", pitch: "16", family: .Principal),
                .init(id: 11, name: "Octave", pitch: "8", family: .Principal),
            ],
            .pedalFlutes: [
                .init(id: 12, name: "Untersatz", pitch: "32", family: .Flute),
                .init(id: 13, name: "Flute", pitch: "16", family: .Flute),
            ],
        ]
    }
}
