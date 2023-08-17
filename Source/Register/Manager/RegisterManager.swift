//
//  RegisterManager.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

class RegisterManager: RegisterManagerProtocol {
    func register(model: RegisterModel) async throws {
        guard model.name.count > 4 && model.name.contains(" ") else { throw RegisterManagerErrors.invalidName }
        guard model.email.isValidEmail else { throw RegisterManagerErrors.invalidEmail }
        guard model.password.count > 5 else { throw RegisterManagerErrors.invalidPassword }
        try await WebService.register(model: model)
    }
}
