//
//  LoginManager.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

class LoginManager: LoginManagerProtocol {
    func login(model: LoginModel) async throws {
        guard model.email.isValidEmail else { throw LoginManagerErrors.invalidEmail }
        guard model.password.count > 5 else { throw LoginManagerErrors.invalidPassword }
        try await WebService.login(model: model)
    }
}
