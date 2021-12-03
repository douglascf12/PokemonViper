//
//  PokemonAPIModel.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation
import ObjectMapper

class PokemonAPIModel: Mappable {
    
    var name: String = ""
    var url: String = ""

    required init?(map: Map) {}
    
    func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
    }
}
