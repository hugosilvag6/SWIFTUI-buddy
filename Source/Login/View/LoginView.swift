//
//  LoginView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct LoginView: View {
    @State var model = LoginModel()
    var manager: LoginManagerProtocol = LoginManager()
    
    var body: some View {
        VStack(alignment: .leading, spacing: .scaled(16)) {
            loginLabel
            
            CustomTextfield(text: $model.email, placeholder: "Email")
            CustomTextfield(text: $model.password, placeholder: "Senha", isSecure: true)
            
            forgotPasswordButton
            
            CustomButton("Logar") { await login() }
            
            CustomSocialButton(type: .google) { googleLogin() }
            CustomSocialButton(type: .facebook) { facebookLogin() }
            
            AuthenticationDivisor()

            CustomNavigationLink("Criar conta", destination: AnyView(RegisterView()))
        }
        .padding(.horizontal, .scaled(24))
    }
}

extension LoginView {
    var loginLabel: some View {
        Text("Login")
            .customFont(19, font: .ubuntu, weight: .medium)
            .padding(.vertical, .scaled(8))
            .foregroundColor(Constants.Colors.authenticationTitle)
    }
    var forgotPasswordButton: some View {
        Button {
            forgotPassword()
        } label: {
            Text("Esqueci a senha")
                .underline()
                .customFont(12)
                .foregroundColor(Constants.Colors.authenticationForgotPassword)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
