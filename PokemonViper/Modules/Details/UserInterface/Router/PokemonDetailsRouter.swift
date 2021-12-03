//
//  PokemonDetailsRouter.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation
import UIKit

class PokemonDetailsRouter {
    
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func present(navigationController: UINavigationController) {
        navigationController.pushViewController(PokemonDetailsViewControllerBuilder.make(router: self), animated: true)
    }
}
