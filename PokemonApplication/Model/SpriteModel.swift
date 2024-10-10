//
//  SpriteModel.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import Foundation

struct SpriteModel: Codable {
    var sprites : Sprite
}

struct Sprite: Codable {
    var back_default : String
}
