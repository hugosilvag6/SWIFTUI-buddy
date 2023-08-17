//
//  GuidesCategoryType.swift
//  Buddy
//
//  Created by Hugo Silva on 03/08/23.
//

import Foundation

enum GuidesCategoryType: CaseIterable, Equatable {
    case behavior, hygiene, orders, health, tricks
    
    var title: String {
        switch self {
        case .behavior: return "Comportamento"
        case .hygiene: return "Higiene"
        case .orders: return "Ordens"
        case .health: return "Saúde"
        case .tricks: return "Truques"
        }
    }
    var mockGuides: [Guide] {
        switch self {
        case .behavior:
            return [
                .init(title: "Lidando com a Ansiedade de Separação", image: "NewsItemImageMock1", author: "Maria Carmen"),
                .init(title: "Introduzindo um Novo Animal de Estimação em Casa", image: "NewsItemImageMock2", author: "João Silva"),
                .init(title: "Treinando para Parar de Latir Excessivamente", image: "NewsItemImageMock3", author: "Ana Rodrigues")
            ]
        case .hygiene:
            return [
                .init(title: "Banho e Cuidados com a Pelagem", image: "NewsItemImageMock2", author: "Pedro Almeida"),
                .init(title: "Mantendo as Orelhas Limpas e Saudáveis", image: "NewsItemImageMock3", author: "Carla Pereira"),
                .init(title: "Cuidados Básicos com as Patas e Unhas", image: "NewsItemImageMock1", author: "Mariana Santos")
            ]
        case .orders:
            return [
                .init(title: "Ensinando o Comando 'Senta' em Poucos Passos", image: "NewsItemImageMock3", author: "Rafael Lima"),
                .init(title: "Como Estabelecer uma Comunicação Clara com Seu Pet", image: "NewsItemImageMock2", author: "Amanda Costa"),
                .init(title: "Dominando o Comando 'Fica' para Situações de Segurança", image: "NewsItemImageMock1", author: "Luiz Oliveira")
            ]
        case .health:
            return [
                .init(title: "Prevenindo Parasitas Internos e Externos", image: "NewsItemImageMock1", author: "Isabela Fernandes"),
                .init(title: "Reconhecendo Sinais de Problemas Digestivos em Pets", image: "NewsItemImageMock3", author: "Gustavo Mendes"),
                .init(title: "Rotina de Visitas ao Veterinário para uma Vida Longa e Saudável", image: "NewsItemImageMock2", author: "Fernanda Ribeiro")
            ]
        case .tricks:
            return [
                .init(title: "Aprenda a Fazer Seu Pet Dar a Pata", image: "NewsItemImageMock3", author: "José Santos"),
                .init(title: "Rolando e Brincando: Ensine o Comando 'Rola'", image: "NewsItemImageMock1", author: "Patrícia Soares"),
                .init(title: "Desvendando o Mistério do 'Pega o Brinquedo'", image: "NewsItemImageMock2", author: "Ricardo Carvalho")
            ]
        }
    }
}

struct Guide: Identifiable {
    var id = UUID().uuidString
    var title: String
    var image: String
    var author: String
}
