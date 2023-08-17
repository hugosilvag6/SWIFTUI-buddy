//
//  AccountManagerErrors.swift
//  Buddy
//
//  Created by Hugo Silva on 17/08/23.
//

import Foundation

enum AccountManagerErrors: LocalizedError {
    case signOutError, invalidPassword
    
    var errorDescription: String? {
        switch self {
        case .signOutError: return "Falha ao deslogar."
        case .invalidPassword: return "Senha inválida. A senha deve conter no mínimo 6 caracteres."
        }
    }
}
