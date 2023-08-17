//
//  CustomButton.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

enum CustomButtonType: Equatable {
    case filled, stroked
}

struct CustomButton: View {
    var title: String
    var type: CustomButtonType
    var action: () async -> Void
    
    init(_ title: String, type: CustomButtonType = .filled, action: @escaping () async -> Void) {
        self.title = title
        self.type = type
        self.action = action
    }
    
    var body: some View {
        Button {
            Task { await action() }
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

extension CustomButton {
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
