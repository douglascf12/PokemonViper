//
//  PokemonListInteractorBuilder.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

class PokemonListInteractorBuilder {
    static func make(manager: PokemonListManagerInput) -> PokemonListInteractor {
        return PokemonListInteractor(manager: manager)
    }
}
