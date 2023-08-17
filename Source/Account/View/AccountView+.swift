//
//  AccountView+.swift
//  Buddy
//
//  Created by Hugo Silva on 17/08/23.
//

import Foundation

extension AccountView {
    func signOut() {
        do {
            try manager.signOut()
            CoordinatorViewModel.shared.uiState = .login
        } catch {
            showAlert(AccountManagerErrors.signOutError.localizedDescription) 
        }
    }
}
