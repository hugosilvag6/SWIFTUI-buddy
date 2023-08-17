//
//  DashboardGuides.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

enum DashboardGuidesItems: Equatable, CaseIterable {
    case first, second, third
    
    var title: String {
        switch self {
        case .first: return "Primeiro pet?"
        case .second: return "Xixi no lugar errado?"
        case .third: return "Cuidando de filhotes"
        }
    }
    var description: String {
        switch self {
        case .first: return "Saiba como cuidar dele!"
        case .second: return "Entenda como educar!"
        case .third: return "Aprenda com dicas incríveis!"
        }
    }
    var gradientFirst: String {
        switch self {
        case .first: return "A872FF"
        case .second: return "81CE97"
        case .third: return "FF7272"
        }
    }
    var gradientSecond: String {
        switch self {
        case .first: return "4A00C3"
        case .second: return "00C314"
        case .third: return "900000"
        }
    }
    var image: String {
        switch self {
        case .first: return "DashboardGuidesMock"
        case .second: return "DashboardGuidesMock2"
        case .third: return "DashboardGuidesMock3"
        }
    }
}

struct DashboardGuides: View {

    var body: some View {
        VStack(alignment: .leading) {
            Text("Nossos guias")
                .customFont(24, font: .ubuntu, weight: .medium)
                .padding(.horizontal, .scaled(16))
                .foregroundColor(Constants.Colors.dashboardSectionTitles)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: .scaled(16)) {
                    ForEach(DashboardGuidesItems.allCases, id: \.self) { item in
                        guidesCard(item)
                    }
                }
                .padding(.horizontal, .scaled(16))
            }
        }
    }
    
    func guidesCard(_ item: DashboardGuidesItems) -> some View {
        VStack(alignment: .leading, spacing: .scaled(8)) {
            Text(item.title)
                .customFont(24, font: .ubuntu, weight: .medium)
                .fixedSize(horizontal: false, vertical: true)
            Text(item.description)
                .customFont(14, font: .ubuntu, weight: .light)
            
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(height: .scaled(105))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Button {
                print("dashboard guides item")
            } label: {
                Text("Acessar guia")
                    .customFont(15, font: .poppins, weight: .medium)
                    .frame(maxWidth: .scaled(.infinity))
                    .frame(height: .scaled(36))
            }
            .background(Constants.Colors.dashboardGuidesButtonBackground.cornerRadius(5))
        }
        .foregroundColor(.white)
        .padding(.horizontal, .scaled(16))
        .padding(.vertical, .scaled(24))
        .frame(width: .scaled(172), height: .scaled(283))
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.hexColor(item.gradientFirst), Color.hexColor(item.gradientSecond)]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .cornerRadius(10)
            )
    }
}

struct DashboardGuides_Previews: PreviewProvider {
    static var previews: some View {
        DashboardGuides()
    }
}
