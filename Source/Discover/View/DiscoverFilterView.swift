//
//  DiscoverFilterView.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import SwiftUI

struct DiscoverFilterView: View {
    @Binding var filter: DiscoverFilterModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: .scaled(24)) {
            backButton
            title
            DiscoverFilterSlider(placeholder: "Idade", unit: "anos", maxValue: 20, bind: $filter.age)
            DiscoverFilterSlider(placeholder: "Distância", unit: "km", maxValue: 100, bind: $filter.distance)
            moreOptions
            Spacer()
        }
        .padding(.horizontal, .scaled(24))
        .navigationBarHidden(true)
    }
}

extension DiscoverFilterView {
    var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
        }

    }
    var title: some View {
        Text("Filtros")
            .customFont(18, font: .ubuntu, weight: .bold)
    }
    var moreOptions: some View {
        VStack(spacing: .scaled(24)) {
            DiscoverFilterExtraOption(type: .species, bind: $filter.species)
            DiscoverFilterExtraOption(type: .sex, bind: $filter.sex)
            DiscoverFilterExtraOption(type: .size, bind: $filter.size)
            if filter.species == "Cachorro" {
                DiscoverFilterExtraOption(type: .dogRace, bind: $filter.race)
            } else if filter.species == "Gato"  {
                DiscoverFilterExtraOption(type: .catRace, bind: $filter.race)
            }
            DiscoverFilterExtraOption(type: .hair, bind: $filter.hair)
            DiscoverFilterExtraOption(type: .care, bind: $filter.care)
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, Constants.Colors.discoverFilterSliderBoxSecondGradient]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(8)
                .shadow(color: .gray.opacity(0.5), radius: 3, y: 3)
        )
    }
}

struct DiscoverFilterView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverFilterView(filter: .constant(DiscoverFilterModel()))
    }
}
