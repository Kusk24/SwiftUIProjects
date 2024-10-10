//
//  SpriteViewModel.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import Foundation

struct SpriteViewModel {
    static let shared = SpriteViewModel()
    func fetchData(url: String, completion: @escaping (Sprite) -> ()){
//        let url = "https://pokeapi.co/api/v2/pokemon/1/";
        guard let urlConvert = URL(string: url) else { return }
        URLSession.shared.dataTask(with: urlConvert) { data, response, error in
            if error == nil {
                if let data = data {
                    do {
                        let result = try JSONDecoder().decode(SpriteModel.self , from: data)
                        completion(result.sprites)
                    } catch {
                        print(error)
                    }
                }
            }
        }.resume()
    }
}
