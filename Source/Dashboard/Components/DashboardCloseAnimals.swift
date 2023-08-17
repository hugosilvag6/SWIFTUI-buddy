//
//  DashboardCloseAnimals.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

enum DashboardCloseAnimalsItems: Equatable, CaseIterable {
    case bella, fred, bolota
    
    var name: String {
        switch self {
        case .bella: return "Bella"
        case .fred: return "Fred"
        case .bolota: return "Bolota"
        }
    }
    var image: String {
        switch self {
        case .bella: return "CloseAnimalsMock1"
        case .fred:  return "CloseAnimalsMock2"
        case .bolota:  return "CloseAnimalsMock3"
        }
    }
    var distance: String {
        switch self {
        case .bella: return "2,5"
        case .fred: return "3,2"
        case .bolota: return "4"
        }
    }
}

struct DashboardCloseAnimals: View {
    
    var body: some View {
        VStack(alignment: .leading) {
        
            Text("Animais por perto")
                .customFont(24, font: .ubuntu, weight: .medium)
                .padding(.horizontal, .scaled(16))
                .foregroundColor(Constants.Colors.dashboardSectionTitles)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: .scaled(12)) {
                    ForEach(DashboardCloseAnimalsItems.allCases, id: \.self) { item in
                        closeAnimalsCard(item)
                    }
                }
                .padding(.horizontal, .scaled(16))
            }
        }
    }
    
    func closeAnimalsCard(_ item: DashboardCloseAnimalsItems) -> some View {
        ZStack {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: .scaled(137), height: .scaled(188))
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack (alignment: .leading) {
                Spacer()
                HStack {
                    Text(item.name)
                        .customFont(18, font: .ubuntu, weight: .bold)
                    Spacer()
                    Image(systemName: "heart")
                        .font(.system(size: 18, weight: .bold))
                }
                Text("a \(item.distance)km")
                    .customFont(14, font: .ubuntu, weight: .regular)
            }
            .padding(.scaled(8))
            .foregroundColor(.white)
        }
        .frame(width: .scaled(137), height: .scaled(188))
    }
}

struct DashboardCloseAnimals_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCloseAnimals()
    }
}
