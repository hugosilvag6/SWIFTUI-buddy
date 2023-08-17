//
//  DiscoverPetMainInfo.swift
//  Buddy
//
//  Created by Hugo Silva on 11/07/23.
//

import SwiftUI

struct DiscoverPetMainInfo: View {
    var showingInfo: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: .scaled(8)) {
            HStack {
                name
                age
            }
            HStack {
                distanceIcon
                distanceText
            }
            .foregroundColor(showingInfo ? Constants.Colors.discoverPetInfoDistance : .white)
        }
    }
}

extension DiscoverPetMainInfo {
    var name: some View {
        Text("Vicente")
            .customFont(33, font: .ubuntu, weight: .bold)
            .foregroundColor(showingInfo ? Constants.Colors.discoverPetInfoNameFont : .white)
    }
    var age: some View {
        Text("6 meses")
            .customFont(33, font: .ubuntu, weight: .light)
            .foregroundColor(showingInfo ? Constants.Colors.discoverPetInfoAgeFont : .white)
    }
    var distanceIcon: some View {
        Image("DiscoverLocationIcon")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: .scaled(24), height: .scaled(24))
    }
    var distanceText: some View {
        Text("a \(5)km de distância")
            .customFont(20, font: .ubuntu, weight: .regular)
    }
}

struct DiscoverPetMainInfo_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPetMainInfo(showingInfo: true)
    }
}
