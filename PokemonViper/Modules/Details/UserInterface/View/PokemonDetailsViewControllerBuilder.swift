//
//  PokemonDetailsViewControllerBuilder.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

class PokemonDetailsViewControllerBuilder {
    static func make(router: PokemonDetailsRouter) -> PokemonDetailsViewController {
        let viewController = PokemonDetailsViewController(nibName: String(describing: PokemonDetailsViewController.self), bundle: nil)
        let manager = PokemonDetailsManager()
        let interactor = PokemonDetailsInteractor(manager: manager)
        let presenter = PokemonDetailsPresenter(interactor: interactor, router: router)
        
        interactor.output = presenter
        presenter.output = viewController
        viewController.presenter = presenter
        
        return viewController
    }
}
