//
//  FirebaseCollections.swift
//  Buddy
//
//  Created by Hugo Silva on 15/08/23.
//

import Foundation
import Firebase

extension Constants {
    enum FirestoreCollections: String {
        case users = "users"
        case tasks = "tasks"
        
        var ref: CollectionReference {
            return Firestore.firestore().collection(self.rawValue)
        }
    }
}
