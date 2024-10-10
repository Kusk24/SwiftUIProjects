//
//  ContentView.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State var results: [Results] = []
    @State var sprite: Sprite? = nil

    var body: some View {
        VStack {
            List(results, id: \.self) { result in
                HStack {
                    PokemonImageView(url: result.url)
                    Text(result.name)
                }
            }
        }
        
        .onAppear(perform: {
            PokemonViewModel.shared.fetchData { result in
                self.results = result
            }

            
        }
        
        )
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
