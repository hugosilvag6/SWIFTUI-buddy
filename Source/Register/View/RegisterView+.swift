//
//  RegisterView+.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

extension RegisterView {
    @MainActor func register() async {
        do {
            showLoading()
            try await manager.register(model: model)
            hideLoading()
            showAlert("Cadastro realizado com sucesso.") {
                presentationMode.wrappedValue.dismiss()
            }
        } catch {
            hideLoading()
            showAlert(error.localizedDescription)
        }
    }
    func googleRegister() { showAlert("Em desenvolvimento") }
    func facebookRegister() { showAlert("Em desenvolvimento") }
}
