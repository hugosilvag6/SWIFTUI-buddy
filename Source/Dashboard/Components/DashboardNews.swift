//
//  DashboardNews.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

enum DashboardNewsItems: Equatable, CaseIterable {
    case first, second
    
    var title: String {
        switch self {
        case .first: return "Vacine já!"
        case .second: return "Campanha de adoção!"
        }
    }
    var date: String {
        switch self {
        case .first: return "De 26/09 a 4/10"
        case .second: return "De 01/10 a 07/10"
        }
    }
    var image: String {
        switch self {
        case .first: return "DashboardNewsMock"
        case .second: return "DashboardNewsMock2"
        }
    }
}

struct DashboardNews: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: .scaled(16)) {
                ForEach(DashboardNewsItems.allCases, id: \.self) { item in
                    card(item)
                }
            }
            .padding(.horizontal, .scaled(16))
        }
    }
    
    func card(_ item: DashboardNewsItems) -> some View {
        ZStack(alignment: .leading) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: .scaled(327), height: .scaled(160))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: .scaled(4)) {
                Text(item.title)
                    .customFont(24, font: .ubuntu, weight: .medium)
                Text(item.date)
                    .customFont(13, font: .ubuntu, weight: .light)
                Button {
                    //
                } label: {
                    Text("Saiba mais")
                        .customFont(15, font: .poppins, weight: .medium)
                        .frame(height: .scaled(26))
                        .padding(.horizontal)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color.hexColor("FF9920"), Color.hexColor("DD5002")]), startPoint: .leading, endPoint: .trailing)
                                .cornerRadius(5)
                        )
                }
                .padding(.top, .scaled(14))
            }
            .foregroundColor(.white)
            .padding(.leading, .scaled(12))
        }
    }
}

struct DashboardNews_Previews: PreviewProvider {
    static var previews: some View {
        DashboardNews()
    }
}
