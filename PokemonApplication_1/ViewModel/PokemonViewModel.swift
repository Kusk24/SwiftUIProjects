//
//  PokemonViewModel.swift
//  PokemonApplication
//
//  Created by Win Yu Maung on 15/09/2024.
//

import Foundation

struct PokemonViewModel {
    func fetchData(completion: @escaping ([Results]) -> ()){
        let url = "https://pokeapi.co/api/v2/pokemon?limit=151";
        guard let urlConvert = URL(string: url) else { return }
        URLSession.shared.dataTask(with: urlConvert) { data, response, error in
            if error == nil {
                if let data = data {
                    do {
                        let result = try JSONDecoder().decode(PokemonModel.self, from: data)
                        completion(result.results)
                    } catch {
                        print(error)
                    }
                }
            }
        }.resume()
    }
}
