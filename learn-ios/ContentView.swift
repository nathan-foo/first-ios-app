//
//  ContentView.swift
//  learn-ios
//
//  Created by Nathan Foo on 10/17/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🎧, 🎹, 🎻, 🎤
}

struct ContentView: View {
    @State var selection: Emoji = .🎧
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("First App!")
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
