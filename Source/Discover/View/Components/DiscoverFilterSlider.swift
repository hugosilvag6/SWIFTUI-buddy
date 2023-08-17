//
//  DiscoverFilterSlider.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import SwiftUI

struct DiscoverFilterSlider: View {
    var placeholder: String
    var unit: String
    var maxValue: Float
    @Binding var bind: Float
    
    var body: some View {
        VStack {
            HStack {
                Text(placeholder)
                Spacer()
                Text("até \(String(format: "%.0f", bind)) \(unit)")
            }
            .customFont(14, font: .ubuntu, weight: .medium)
            Slider(value: $bind, in: 0...maxValue, step: 1)
                .tint(Constants.Colors.discoverFilterSliderColor)
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, Constants.Colors.discoverFilterSliderBoxSecondGradient]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(8)
                .shadow(color: .gray.opacity(0.5), radius: 3, y: 3)
        )
    }
}

struct DiscoverFilterSlider_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverFilterSlider(placeholder: "Distância", unit: "km", maxValue: 100, bind: .constant(10))
    }
}
