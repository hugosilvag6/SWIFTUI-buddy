//
//  CustomTextfield.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct CustomTextfield: View {
    @Binding var text: String
    var placeholder: String
    var isSecure = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField("", text: $text)
            } else {
                TextField("", text: $text)
            }
        }
        .autocorrectionDisabled()
        .textInputAutocapitalization(.never)
        .frame(height: .scaled(44))
        .background(textfieldPlaceholder)
        .padding(.horizontal, .scaled(24))
        .background(background)
        .foregroundColor(Constants.Colors.customTextfieldFont)
        .customFont(15, font: .ubuntu, weight: .regular)
    }
}




extension CustomTextfield {
    @ViewBuilder var textfieldPlaceholder: some View {
        if text.isEmpty {
            Text(placeholder)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Constants.Colors.customTextfieldFont)
        }
    }
    var background: some View {
        Constants.Colors.customTextfieldBackground
            .cornerRadius(30)
    }
}
