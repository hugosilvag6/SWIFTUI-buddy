//
//  SocialButton.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

enum CustomSocialButtonType: Equatable {
    case google, facebook
    
    var title: String {
        switch self {
        case .google: return "Google"
        case .facebook: return "Facebook"
        }
    }
    var icon: String {
        switch self {
        case .google: return "GoogleLogo"
        case .facebook: return "FacebookLogo"
        }
    }
}

struct CustomSocialButton: View {
    var type: CustomSocialButtonType
    var isRegister = false
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(type.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: .scaled(16), height: .scaled(16))
                Text(isRegister ? "Cadastrar com \(type.title)" : "Entrar com \(type.title)")
                    .foregroundColor(Constants.Colors.customSocialButtonFont)
                    .customFont(12, font: .poppins, weight: .regular)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 44)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Constants.Colors.customSocialButtonStroke)
            )
        }
    }
}

struct CustomSocialButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomSocialButton(type: .facebook, action: {})
    }
}
