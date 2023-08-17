//
//  DiscoverFilterExtraOptionType.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import Foundation

enum DiscoverFilterExtraOptionType: Equatable, CaseIterable {
    case species, sex, size, dogRace, catRace, hair, care
    
    var title: String {
        switch self {
        case .species: return "Espécie"
        case .sex: return "Sexo"
        case .size: return "Porte"
        case .dogRace: return "Raça"
        case .catRace: return "Raça"
        case .hair: return "Pelos"
        case .care: return "Cuidados e comportamento"
        }
    }
    var options: [String] {
        switch self {
        case .species: return ["Cachorro", "Gato"]
        case .sex: return ["Macho", "Fêmea"]
        case .size: return ["Pequeno", "Médio", "Grande"]
        case .dogRace: return ["Vira-lata", "Labrador Retriever", "Bulldog", "Golden Retriever", "Poodle", "Beagle", "Rottweiler", "Dachshund", "Boxer", "Chihuahua", "Husky Siberiano", "Dálmata", "Shih Tzu", "Yorkshire Terrier", "Border Collie", "Pastor Alemão", "Basset Hound", "Pug", "Doberman", "Cocker Spaniel", "Buldogue Francês", "Bull Terrier", "Akita", "Maltês", "Pomerânia"]
        case .catRace: return ["SRD (Sem Raça Definida)", "Persa", "Siamês", "Maine Coon", "Sphynx", "Ragdoll", "Bengal", "Siberiano", "British Shorthair", "Abissínio", "Scottish Fold", "Norueguês da Floresta", "Burmese", "Azul Russo", "Birmanês", "Ragamuffin", "Savannah", "Angorá Turco", "Sagrado da Birmânia", "Exótico de Pêlo Curto", "Manx", "Himalaio", "Tonquinês", "Singapura", "Munchkin"]
        case .hair: return ["Curto", "Médio", "Longo"]
        case .care: return ["Cuidados especiais", "Ativo", "Calmo"]
        }
    }
}
