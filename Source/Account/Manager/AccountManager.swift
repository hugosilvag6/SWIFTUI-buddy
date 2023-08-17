//
//  AccountManager.swift
//  Buddy
//
//  Created by Hugo Silva on 17/08/23.
//

import Foundation
import Firebase

class AccountManager: AccountManagerProtocol {
    func signOut() throws {
        try WebService.signOut()
    }
}
