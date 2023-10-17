//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 17.10.2023.
//

import SwiftUI

var emojis = ["😀","😃","😆","😅"]

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(emoji: "😎")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
