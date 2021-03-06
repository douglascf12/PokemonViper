//
//  PokemonListInteractor.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

protocol PokemonListInteractorInput {
    func fetch()
    func findSortOptions()
}

protocol PokemonListInteractorOutput: class {
    func fetched(pokemons: [PokemonEntity])
    func foundSortOptions(_ options: [SortType])
}

enum SortType: String {
    case alphabetically = "Alfabetica"
    case byId = "Por Id"
}

class PokemonListInteractor: PokemonListInteractorInput {
    
    weak var output: PokemonListInteractorOutput?
    var manager: PokemonListManagerInput
    
    var entities: [PokemonEntity] = []
    
    init(manager: PokemonListManagerInput) {
        self.manager = manager
    }
    
    func fetch() {
        manager.getPokemons { pokemons in
            self.entities = PokemonMapper.parse(from: pokemons)
            self.output?.fetched(pokemons: self.entities)
        }
    }
    
    func findSortOptions() {
        output?.foundSortOptions([.alphabetically, .byId])
    }
}
