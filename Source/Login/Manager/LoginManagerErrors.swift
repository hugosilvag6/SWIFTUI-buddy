//
//  LoginManagerErrors.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

enum LoginManagerErrors: LocalizedError {
    case invalidEmail, invalidPassword
    
    var errorDescription: String? {
        switch self {
        case .invalidEmail: return "Email inválido."
        case .invalidPassword: return "Senha inválida. A senha deve conter no mínimo 6 caracteres."
        }
    }
}
