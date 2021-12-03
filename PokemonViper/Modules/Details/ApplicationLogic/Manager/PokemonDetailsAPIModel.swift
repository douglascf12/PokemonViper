//
//  PokemonDetailsAPIModel.swift
//  PokemonViper
//
//  Created by Douglas Cardoso Ferreira on 03/12/21.
//

import Foundation
import ObjectMapper

class PokemonDetailsAPIModel: Mappable{
    var name: String = ""
    var order: Int = 0
    var id: Int = 0
    var height: Int = 0
    var baseExperience: Int = 0
    var weight: Int = 0
    var sprites: [String : Any] = [:]
    var types: [[String : Any]] = []
    var moves: [[String : Any]] = []
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        name <- map["name"]
        order <- map["order"]
        id <- map["id"]
        height <- map["height"]
        baseExperience <- map["base_experience"]
        weight <- map["weight"]
        sprites <- map["sprites"]
        types <- map["types"]
        moves <- map["moves"]
    }
}
