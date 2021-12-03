//
//  PokemonListManager.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

protocol PokemonListManagerInput {
    func getPokemons(completion: @escaping ([PokemonAPIModel]) -> ())
}

class PokemonListManager: PokemonListManagerInput {
    var objects: [PokemonAPIModel] = []
    
    func getPokemons(completion: @escaping ([PokemonAPIModel]) -> ()) {
        PokemonAPI.shared.getPokemons { objects in
            self.objects = objects
            completion(self.objects)
        }
    }
}
