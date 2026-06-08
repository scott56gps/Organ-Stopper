//
//  StopCue.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/3/26.
//

struct StopCue: Hashable {
    let id: Int
    let label: String?
}

extension StopCue {
    static var previewData: [StopCue] {
        [
            .init(id: 1, label: "Beginning"),
            .init(id: 2, label: "mm 36"),
            .init(id: 3, label: "mm 48")
        ]
    }
}
