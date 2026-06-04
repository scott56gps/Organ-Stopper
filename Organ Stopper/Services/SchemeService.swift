//
//  SchemeService.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/4/26.
//

class SchemeService {
    func getCueDetails(schemeId: Int) async -> [StopCueDetail] {
        return StopCueDetail.previewData
    }
}
