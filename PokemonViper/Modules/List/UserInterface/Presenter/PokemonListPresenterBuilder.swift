//
//  PokemonListPresenterBuilder.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

class PokemonListPresenterBuilder {
    static func make(interactor: PokemonListInteractorInput, router: PokemonListRouter) -> PokemonListPresenter {
        let presenter = PokemonListPresenter(interactor: interactor, router: router)
        return presenter
    }
}
