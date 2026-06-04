//
//  StopCue.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/3/26.
//

struct StopCue {
    let id: Int
    let label: String?
}

extension StopCue {
    static var previewData: [StopCue] {
        [
            .init(id: 1, label: "Loud"),
            .init(id: 2, label: "Softer")
        ]
    }
}
