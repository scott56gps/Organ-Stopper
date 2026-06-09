//
//  Organ.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import Foundation

struct Organ: Hashable {
    let id: Int
    let name: String
    let location: String
}

extension Organ {
    static var previewData: [Organ] {
        [
            Organ(id: 1, name: "CUCC", location: "Claremont, CA"),
            Organ(id: 2, name: "Walt Disney Concert Hall", location: "Los Angeles, CA"),
            Organ(id: 3, name: "Home", location: "Garage")
        ]
    }
}
