//
//  Division.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/12/24.
//

import Foundation

struct Division: Hashable {
    let name: String
    let hasExpression: Bool
    let expressionPosition: ExpressionPosition?
    let stops: [Stop]
}

extension Division {
    static var previewData: [Division] {
        [
            Division(name: "Great", hasExpression: false, expressionPosition: nil,
                     stops: Stop.previewData[.greatFlutes, default: []]),
            Division(name: "Swell", hasExpression: true, expressionPosition: .Open,
                     stops: Stop.previewData[.swellFlutes, default: []]),
            Division(name: "Pedal", hasExpression: true, expressionPosition: .Open,
                     stops: Stop.previewData[.pedalFlutes, default: []]),
        ]
    }
}
