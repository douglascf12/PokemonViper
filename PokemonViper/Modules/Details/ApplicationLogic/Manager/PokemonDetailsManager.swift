//
//  PokemonDetailsManager.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

protocol PokemonDetailsManagerInput {
    func getPokemonDetails(id: String, completion: @escaping ((PokemonDetailsAPIModel) -> ()))
}

class PokemonDetailsManager: PokemonDetailsManagerInput {
    
    var object: PokemonDetailsAPIModel?
    
    func getPokemonDetails(id: String, completion: @escaping ((PokemonDetailsAPIModel) -> ())) {
        PokemonAPI.shared.getPokemon(id: id) { pokemon in
            self.object = pokemon
            guard let object = self.object else { return }
            completion(object)
        }
    }
}
