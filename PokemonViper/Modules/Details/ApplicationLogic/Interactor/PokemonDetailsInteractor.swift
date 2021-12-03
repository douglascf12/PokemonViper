//
//  PokemonDetailsInteractor.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation

protocol PokemonDetailsInteractorInput {
    var output: PokemonDetailsInteractorOutput? { get set }
    
    func fetchDetails(id: Int)
}

protocol PokemonDetailsInteractorOutput: class {
    func fetchedDetails(_ details: PokemonDetailsEntity)
}

class PokemonDetailsInteractor: PokemonDetailsInteractorInput {
    
    weak var output: PokemonDetailsInteractorOutput?
    var manager: PokemonDetailsManagerInput
    var entity: PokemonDetailsEntity?
    
    init(manager: PokemonDetailsManagerInput) {
        self.manager = manager
    }
    
    func fetchDetails(id: Int) {
        manager.getPokemonDetails(id: "\(id)") { details in
            self.entity = PokemonMapper.parse(from: details)
            guard let entity = self.entity else { return }
            self.output?.fetchedDetails(entity)
        }
    }
}
