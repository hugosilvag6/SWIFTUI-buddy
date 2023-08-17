//
//  RegisterManagerErrors.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

enum RegisterManagerErrors: LocalizedError {
    case invalidName, invalidEmail, invalidPassword
    
    var errorDescription: String? {
        switch self {
        case .invalidName: return "Nome inválido. Informe o nome completo."
        case .invalidEmail: return "Email inválido."
        case .invalidPassword: return "Senha inválida. A senha deve conter no mínimo 6 caracteres."
        }
    }
}
