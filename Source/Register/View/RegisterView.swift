//
//  RegisterView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct RegisterView: View {
    @State var model = RegisterModel()
    var manager: RegisterManagerProtocol = RegisterManager()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: .scaled(16)) {
            registerLabel
            
            VStack(alignment: .leading, spacing: .scaled(8)) {
                textfieldLabel("Nome completo")
                CustomTextfield(text: $model.name, placeholder: "Ex: João Campos Silveira")
            }
            
            VStack(alignment: .leading, spacing: .scaled(8)) {
                textfieldLabel("Email")
                CustomTextfield(text: $model.email, placeholder: "Ex: joaocampos@buddy.com")
            }
            
            VStack(alignment: .leading, spacing: .scaled(8)) {
                textfieldLabel("Escolha uma senha")
                CustomTextfield(text: $model.password, placeholder: "Ex: 123456", isSecure: true)
            }
            
            CustomButton("Cadastrar") { await register() }
            
            CustomSocialButton(type: .google, isRegister: true) { googleRegister() }
            CustomSocialButton(type: .facebook, isRegister: true) { facebookRegister() }
            
            AuthenticationDivisor()
            
            CustomButton("Já tenho uma conta", type: .stroked) {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .padding(.horizontal, .scaled(24))
        .navigationBarHidden(true)
    }
}

extension RegisterView {
    var registerLabel: some View {
        Text("Cadastro")
            .customFont(19, font: .ubuntu, weight: .medium)
            .padding(.vertical, .scaled(8))
            .foregroundColor(Constants.Colors.authenticationTitle)
    }
    func textfieldLabel(_ text: String) -> some View {
        Text(text)
            .customFont(16, font: .ubuntu, weight: .regular)
            .foregroundColor(Constants.Colors.authenticationRegisterTextfieldDescription)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
