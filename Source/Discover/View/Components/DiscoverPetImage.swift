//
//  DiscoverPetImage.swift
//  Buddy
//
//  Created by Hugo Silva on 11/07/23.
//

import SwiftUI

struct DiscoverPetImage: View {
    @Binding var showingInfo: Bool
    @EnvironmentObject var screenSize: ScreenSize
    
    var body: some View {
        Image("DiscoverMock")
            .resizable()
            .scaledToFill()
            .frame(width: screenSize.width * 1.02)
            .frame(maxHeight: showingInfo ? .scaled(330) : .infinity)
            .clipped()
            .overlay (
                LinearGradient(gradient: Gradient(colors: [Color.hexColor("161616").opacity(0), Color.hexColor("161616").opacity(0.9)]), startPoint: .top, endPoint: .bottom)
                    .frame(maxHeight: showingInfo ? 0 : .infinity), alignment: .bottom
            )
            .onTapGesture {
                withAnimation(.linear(duration: 0.5)) {
                    showingInfo.toggle()
                }
            }
    }
}

struct DiscoverPetImage_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPetImage(showingInfo: .constant(true))
            .environmentObject(ScreenSize())
    }
}
