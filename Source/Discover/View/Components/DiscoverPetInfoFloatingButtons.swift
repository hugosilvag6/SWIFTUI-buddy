//
//  DiscoverPetInfoFloatingButtons.swift
//  Buddy
//
//  Created by Hugo Silva on 11/07/23.
//

import SwiftUI

struct DiscoverPetInfoFloatingButtons: View {
    var showingInfo: Bool
    
    var body: some View {
        HStack {
            HStack(spacing: .scaled(16)) {
                ZStack {
                    Circle()
                        .fill(.white)
                        .shadow(color: .gray.opacity(0.3), radius: 3, y: 3)
                    Image("DiscoverPetInfoDislikeIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .scaled(30), height: .scaled(30))
                }
                .frame(width: .scaled(64), height: .scaled(64))
                ZStack {
                    Circle()
                        .fill(.white)
                        .shadow(color: .gray.opacity(0.3), radius: 3, y: 3)
                    Image("DiscoverPetInfoLikeIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .scaled(30), height: .scaled(30))
                }
                .frame(width: .scaled(64), height: .scaled(64))
            }
            .opacity(showingInfo ? 1 : 0)
            .frame(height: showingInfo ? .scaled(90) : 0)
            .frame(maxWidth: .infinity)
            .background (
                LinearGradient(gradient: Gradient(colors: [.clear, .white.opacity(0.8)]), startPoint: .center, endPoint: .bottom)
                    .allowsHitTesting(false)
            )
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct DiscoverPetInfoFloatingButtons_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPetInfoFloatingButtons(showingInfo: true)
    }
}
