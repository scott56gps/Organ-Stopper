//
//  StopScheme.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/3/26.
//

struct StopScheme: Hashable {
    let id: Int
    let name: String
    let notes: String?
    let organ: Organ
    let stopCues: [StopCue] 
}

extension StopScheme {
    static var previewData: [StopScheme] = [
        StopScheme(id: 1, name: "Home Organ", notes: nil, organ: Organ.previewData[2], stopCues: StopCue.previewData),
        StopScheme(id: 1, name: "CUCC", notes: nil, organ: Organ.previewData[0], stopCues: StopCue.previewData)
    ]
}
