//
//  PokemonListViewControllerBuilder.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

class PokemonListViewControllerBuilder {
    static func make(router: PokemonListRouter) -> PokemonListViewController {
        let viewController = PokemonListViewController(nibName: String(describing: PokemonListViewController.self), bundle: nil)
        
        let manager = PokemonListManager()
        let interactor = PokemonListInteractorBuilder.make(manager: manager)
        let presenter = PokemonListPresenterBuilder.make(interactor: interactor, router: router)
        
        interactor.output = presenter
        presenter.output = viewController
        viewController.presenter = presenter
        
        return viewController
    }
}
