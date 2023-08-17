//
//  OnboardingItem.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

enum OnboardingItem: Equatable {
    case adote, cuide, ame
    
    var titleImage: Image {
        switch self {
        case .adote: return Image("OnboardingAdoteTitle")
        case .cuide: return Image("OnboardingCuideTitle")
        case .ame: return Image("OnboardingAmeTitle")
        }
    }
    var description: String {
        switch self {
        case .adote: return "Ache o amigo que você sempre quis ao seu lado do jeito mais fácil e rápido!"
        case .cuide: return "Encontre guias feitos por profissionais da área e saiba o que fazer, quando fazer e como fazer, para manter seu pet sempre saudável!"
        case .ame: return "Tenha mais tempo para brincar,  aproveitar e amar sem limites, quem também te ama sem limites"
        }
    }
    var image: Image {
        switch self {
        case .adote: return Image("OnboardingAdote")
        case .cuide: return Image("OnboardingCuide")
        case .ame: return Image("OnboardingAme")
        }
    }
    var imageSize: CGSize {
        switch self {
        case .adote: return CGSize(width: .scaled(202), height: .scaled(274))
        case .cuide: return CGSize(width: .scaled(208), height: .scaled(274))
        case .ame: return CGSize(width: .scaled(150), height: .scaled(165))
        }
    }
}
