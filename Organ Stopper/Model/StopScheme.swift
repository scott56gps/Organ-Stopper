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
