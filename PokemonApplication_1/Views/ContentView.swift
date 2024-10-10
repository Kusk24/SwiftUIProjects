//
//  ContentView.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import SwiftUI

struct ContentView: View {
    var names: [String] = ["Kelvin","Gao"]
    var result: [Results] = []
    
    var body: some View {
        VStack {
            List(names, id: \.self) { name in
                Text(name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
