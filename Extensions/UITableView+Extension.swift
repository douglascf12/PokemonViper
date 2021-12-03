//
//  UITableView+Extension.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import UIKit

extension UITableView {
    func assignTo(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.delegate = delegate
        self.dataSource = dataSource
    }
    
    func registerNib(nibName: String, bundle: Bundle?) {
        let nib = UINib(nibName: nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: nibName)
    }
}
