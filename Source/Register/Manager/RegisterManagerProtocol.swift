//
//  RegisterManagerProtocol.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

protocol RegisterManagerProtocol {
    func register(model: RegisterModel) async throws
}
