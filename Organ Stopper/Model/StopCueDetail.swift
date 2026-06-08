//
//  StopCueDetail.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/3/26.
//

struct StopCueDetail: Hashable {
    let id: Int
    let label: String?
    let divisions: [Division]
}

extension StopCueDetail {
    static var previewData: [StopCueDetail] {
        [
            StopCueDetail(id: 1, label: "Beginning", divisions: Division.previewData[.soft, default: []]),
            StopCueDetail(id: 2, label: "mm 36", divisions: Division.previewData[.loud, default: []]),
            StopCueDetail(id: 3, label: "mm 48", divisions: Division.previewData[.loud, default: []]),
        ]
    }
}
