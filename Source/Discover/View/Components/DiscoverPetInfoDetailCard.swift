//
//  DiscoverPetInfoDetailCard.swift
//  Buddy
//
//  Created by Hugo Silva on 11/07/23.
//

import SwiftUI

enum DiscoverPetInfoDetailCardType: Equatable {
    case sex, age, race, weight
    
    var title: String {
        switch self {
        case .sex: return "Sexo"
        case .age: return "Idade"
        case .race: return "Raça"
        case .weight: return "Peso"
        }
    }
    var mockValue: String {
        switch self {
        case .sex: return "Macho"
        case .age: return "4 meses"
        case .race: return "Vira-lata"
        case .weight: return "2 kg"
        }
    }
    var icon: Image {
        switch self {
        case .sex: return Image("DiscoverPetInfoSexIcon")
        case .age: return Image("DiscoverPetInfoAgeIcon")
        case .race: return Image("DiscoverPetInfoRaceIcon")
        case .weight: return Image("DiscoverPetInfoWeightIcon")
        }
    }
    var iconBackground: Color {
        switch self {
        case .sex: return Constants.Colors.discoverPetInfoSexBackground
        case .age: return Constants.Colors.discoverPetInfoAgeBackground
        case .race: return Constants.Colors.discoverPetInfoRaceBackground
        case .weight: return Constants.Colors.discoverPetInfoWeightBackground
        }
    }
}

struct DiscoverPetInfoDetailCard: View {
    var type: DiscoverPetInfoDetailCardType
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(type.iconBackground)
            .frame(width: .scaled(36), height: .scaled(36))
            .overlay (
                type.icon
                    .resizable()
                    .scaledToFit()
                    .frame(width: .scaled(18), height: .scaled(18))
            )
            
            VStack(alignment: .leading, spacing: .scaled(3)) {
                Text(type.title)
                    .customFont(14, font: .ubuntu, weight: .light)
                    .foregroundColor(Constants.Colors.discoverPetInfoDetailCardTitle)
                Text(type.mockValue)
                    .customFont(16, font: .ubuntu, weight: .medium)
                    .foregroundColor(Constants.Colors.discoverPetInfoDetailCardValue)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.scaled(8))
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 3)
        )

    }
}

struct DiscoverPetInfoDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPetInfoDetailCard(type: .race)
    }
}
