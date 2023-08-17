//
//  WebService.swift
//  Buddy
//
//  Created by Hugo Silva on 15/08/23.
//

import Foundation
import Firebase

class WebService {
    static func set(collection: Constants.FirestoreCollections, dict: [String:Any]) async throws {
        let userId = try getUserId()
        try await collection.ref.document(userId).setData(dict)
    }
    static func register(model: RegisterModel) async throws {
        try await Auth.auth().createUser(withEmail: model.email, password: model.password)
        try await WebService.set(collection: .users, dict: model.toDict())
    }
    static func login(model: LoginModel) async throws {
        try await Auth.auth().signIn(withEmail: model.email, password: model.password)
    }
    static func signOut() throws {
        try Auth.auth().signOut()
    }
}

extension WebService {
    static func getUserId() throws -> String {
        guard let userId = Auth.auth().currentUser?.uid else { throw WebServiceErrors.badUserId }
        return userId
    }
}
