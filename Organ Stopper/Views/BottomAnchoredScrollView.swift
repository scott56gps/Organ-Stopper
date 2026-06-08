//
//  BottomAnchoredScrollView.swift
//  Organ Stopper
//
//  Created by Scott Nicholes on 6/8/26.
//

import SwiftUI

struct BottomAnchoredScrollView<Item, ID: Hashable, Row: View>: View {
    let items: [Item]
    let id: KeyPath<Item, ID>
    @ViewBuilder let row: (Item) -> Row
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(items, id: id) { item in
                    row(item)
                }
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
    BottomAnchoredScrollView(items: listOfStrings, id: \.self) {
        Text($0)
    }
}
