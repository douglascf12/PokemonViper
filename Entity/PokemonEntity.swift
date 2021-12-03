//
//  PokemonEntity.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

struct PokemonEntity {
    var name: String = ""
    var pokemonURL: String = ""
    var id: Int = 0
    
    init(name: String, pokemonURL: String){
        self.name = name
        self.pokemonURL=pokemonURL
        self.id = Int(pokemonURL.split(separator: "/", maxSplits: 10, omittingEmptySubsequences: true)[5])!
    }
}
