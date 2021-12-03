//
//  PokemonListRouter.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import UIKit

class PokemonListRouter {
    var navigationController: UINavigationController?
    
    func present(in window: UIWindow) {
        window.makeKeyAndVisible()
        let viewController = PokemonListViewControllerBuilder.make(router: self)
        navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
    }
    
    func presentDetails(_ id: Int) {
        guard let navigationController = self.navigationController else { return }
        PokemonDetailsRouter(id: id).present(navigationController: navigationController)
    }
}
