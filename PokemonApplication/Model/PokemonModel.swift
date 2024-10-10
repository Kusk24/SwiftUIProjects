//
//  PokemonModel.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import Foundation

struct PokemonModel: Codable {
    var results: [Results]
}

struct Results: Codable, Hashable {
    var name: String
    var url: String
}

