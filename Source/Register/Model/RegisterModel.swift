//
//  RegisterModel.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation

struct RegisterModel {
    var name = ""
    var email = ""
    var password = ""
    
    func toDict() -> [String:Any] {
        return ["name": name,
                "email": email]
    }
}
