//
//  CoordinatorViewModel.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

class CoordinatorViewModel: ObservableObject {
    @Published var uiState: CoordinatorType = .splash
    
    @Published var showLoadingView = false
    @Published var showAlert: CustomAlert? = nil
    
    static var shared = CoordinatorViewModel()
    
    private init() {}
}

extension CoordinatorViewModel {
    func changeUIState(_ uiState: CoordinatorType) {
        DispatchQueue.main.async {
            self.uiState = uiState
        }
    }
}
