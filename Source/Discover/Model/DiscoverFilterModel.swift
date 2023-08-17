//
//  DiscoverFilterModel.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import Foundation

struct DiscoverFilterModel {
    var age, distance: Float
    var species, sex, size, race, hair, care: String
    
    init(age: Float, distance: Float, species: String, sex: String, size: String, race: String, hair: String, care: String) {
        self.age = age
        self.distance = distance
        self.species = species
        self.sex = sex
        self.size = size
        self.race = race
        self.hair = hair
        self.care = care
    }
    init() {
        self.age = 0
        self.distance = 0
        self.species = ""
        self.sex = ""
        self.size = ""
        self.race = ""
        self.hair = ""
        self.care = ""
    }
}
