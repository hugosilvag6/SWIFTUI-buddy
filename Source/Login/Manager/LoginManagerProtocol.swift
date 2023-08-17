//
//  LoginManagerProtocol.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

protocol LoginManagerProtocol {
    func login(model: LoginModel) async throws
}
