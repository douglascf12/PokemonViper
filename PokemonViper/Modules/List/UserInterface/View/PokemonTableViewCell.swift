//
//  PokemonTableViewCell.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    var display: PokemonListItemViewModel?
    
    func setUp() {
        guard let display = self.display else { return }
        
        idLabel.text = "\(display.id)"
        pokemonNameLabel.text = display.name
    }
}
