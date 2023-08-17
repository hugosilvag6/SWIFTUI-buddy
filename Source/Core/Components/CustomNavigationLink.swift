//
//  CustomNavigationLink.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

enum CustomNavigationLinkType: Equatable {
    case filled, stroked
}

struct CustomNavigationLink: View {
    var title: String
    var type: CustomNavigationLinkType
    var destination: AnyView
    
    init(_ title: String, type: CustomNavigationLinkType = .stroked, destination: AnyView) {
        self.title = title
        self.type = type
        self.destination = destination
    }
    
    var body: some View {
        NavigationLink {
            destination
        } label: {
            Text(title)
                .customFont(15, font: .poppins, weight: .medium)
                .frame(maxWidth: .infinity)
                .frame(height: .scaled(44))
                .foregroundColor(type == .filled ? .white : Constants.Colors.customButtonStroke)
                .background(background)
        }
    }
}

extension CustomNavigationLink {
    @ViewBuilder var background: some View {
        switch self.type {
        case .filled:
            Constants.Colors.customButtonBackground
                .cornerRadius(15)
        case .stroked:
            RoundedRectangle(cornerRadius: 15)
                .stroke(Constants.Colors.customButtonStroke, lineWidth: 1)
        }
    }
}
