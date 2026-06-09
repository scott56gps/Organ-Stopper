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
    enum DivisionPreviewType {
        case soft
        case loud
    }
    static var previewData: [DivisionPreviewType: [Division]] {
        [
            .soft: [
                Division(name: "Great", hasExpression: false, expressionPosition: nil,
                         stops: Stop.previewData[.greatFlutes, default: []]),
                Division(name: "Swell", hasExpression: true, expressionPosition: .Half,
                         stops: Stop.previewData[.swellFlutes, default: []]),
                Division(name: "Pedal", hasExpression: true, expressionPosition: .Open,
                         stops: Stop.previewData[.pedalFlutes, default: []]),
            ],
            .loud: [
                Division(name: "Great", hasExpression: false, expressionPosition: nil,
                         stops: Stop
                    .previewData[.greatPrincipals, default: []]),
                Division(name: "Swell", hasExpression: true, expressionPosition: .Open,
                         stops: Stop
                    .previewData[.swellPrincipals, default: []]),
                Division(name: "Pedal", hasExpression: true, expressionPosition: .Open,
                         stops: Stop
                    .previewData[.pedalPrincipals, default: []]),
            ]
        ]
    }
}
