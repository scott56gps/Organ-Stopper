//
//  SchemeService.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/4/26.
//

import Foundation

class SchemeService: ObservableObject {
    func getCueDetails(schemeId: Int) async -> [StopCueDetail] {
        return StopCueDetail.previewData
    }
}
