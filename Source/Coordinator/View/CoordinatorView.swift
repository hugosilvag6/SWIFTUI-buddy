//
//  ContentView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject var viewModel = CoordinatorViewModel.shared
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                NavigationView {
                    switch viewModel.uiState {
                    case .splash: SplashView()
                    case .login: LoginView()
                    case .onboarding: OnboardingView()
                    case .tabBar: TabBarView()
                    }
                }
                
                if viewModel.showLoadingView { CustomLoadingView() }
                if viewModel.showAlert != nil { CustomAlertView() }
            }
            .environmentObject(ScreenSize(size: geo.size))
        }
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
