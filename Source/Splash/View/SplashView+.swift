//
//  SplashView+.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import Foundation
import Firebase

extension SplashView {
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            if Auth.auth().currentUser != nil {
                CoordinatorViewModel.shared.uiState = .tabBar
            } else {
                CoordinatorViewModel.shared.uiState = .login
            }
        }
    }
}
