//
//  WebServiceErrors.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

enum WebServiceErrors: LocalizedError {
    case badUserId
    
    var errorDescription: String? {
        switch self {
        case .badUserId: return "Usuário não autenticado."
        }
    }
}
