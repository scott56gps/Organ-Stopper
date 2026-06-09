//
//  BottomAnchoredScrollView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/8/26.
//

import SwiftUI

struct BottomAnchoredScrollView<Content: View>: View {
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        ScrollView {
            LazyVStack {
               content()
            }
        }
        .defaultScrollAnchor(.bottom)
    }
}

#Preview {
    let listOfStrings = [
        "Hola",
        "Como",
        "esta?"
    ]
    BottomAnchoredScrollView {
        Text("Hey there!")
        Button("Button") { }
        ForEach(listOfStrings, id: \.self) {
            Text($0)
        }
    }
}
