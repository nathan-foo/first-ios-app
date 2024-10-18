//
//  ContentView.swift
//  learn-ios
//
//  Created by Nathan Foo on 10/17/24.
//

import SwiftUI

enum Emoji: String {
    case 🎧, 🎹, 🎻, 🎤
}

struct ContentView: View {
    var selection: Emoji = .🎧
    
    var body: some View {
        Text(selection.rawValue)
            .font(.system(size: 150))
    }
}

#Preview {
    ContentView()
}
