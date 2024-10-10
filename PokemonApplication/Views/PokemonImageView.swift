//
//  PokemonImageView.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonImageView: View {
    var url: String = ""
    
    @State var imageConvert : String = ""
    
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: imageConvert))
        }
        .onAppear {
            SpriteViewModel.shared.fetchData(url : url) {
                sprite in
                self.imageConvert = sprite.back_default
            }
        }
    }
}

#Preview {
    PokemonImageView()
}
