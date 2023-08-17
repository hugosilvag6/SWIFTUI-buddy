//
//  LoginView+.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

extension LoginView {
    @MainActor func login() async {
        do {
            showLoading()
            try await manager.login(model: model)
            hideLoading()
            CoordinatorViewModel.shared.uiState = .onboarding
        } catch {
            hideLoading()
            showAlert(error.localizedDescription)
        }
    }
    func googleLogin() { showAlert("Em desenvolvimento") }
    func facebookLogin() { showAlert("Em desenvolvimento") }
    func forgotPassword() { showAlert("Em desenvolvimento") }
}
