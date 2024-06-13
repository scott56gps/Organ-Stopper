//
//  Organ.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import Foundation

struct Organ {
    let name: String
    let divisions: [Division]
    
    static let samples: [Organ] = [
        Organ(name: "Walt Disney Concert Hall", divisions: [
            Division(name: "Great", stops: [
                Stop(name: "Diapason", length: .eight),
                Stop(name: "Oboe", length: .eight),
                Stop(name: "Octave", length: .eight)
            ]),
            Division(name: "Swell", stops: [
                Stop(name: "Bourdon", length: .eight),
                Stop(name: "Dulciana", length: .eight),
                Stop(name: "Sharf", length: .four),
                Stop(name: "Mixtur", length: .two_two_thirds)
            ])
        ]),
        Organ(name: "CUCC", divisions: [
            Division(name: "Great", stops: [
                Stop(name: "Oktav", length: .four),
                Stop(name: "Unda Maris", length: .sixteen)
            ])
        ])
    ]
}
