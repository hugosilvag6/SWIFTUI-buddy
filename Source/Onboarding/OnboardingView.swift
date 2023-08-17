//
//  OnboardingView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentTab = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentTab) {
                onboardingItem(.adote).tag(0)
                onboardingItem(.cuide).tag(1)
                onboardingItem(.ame).tag(2)
            }
            .tabViewStyle(.page)
            
            HStack {
                backButton
                nextButton
            }
            .padding(.top, .scaled(48))
        }
        .onAppear { setupCirclesColor() }
        .padding(.horizontal, .scaled(24))
    }
}

extension OnboardingView {
    @ViewBuilder var backButton: some View {
        if currentTab > 0 {
            CustomButton("Voltar", type: .stroked) {
                withAnimation(.linear(duration: 0.5)) {
                    currentTab -= 1
                }
            }
        } else {
            Color.clear
                .frame(height: 1)
                .frame(maxWidth: .infinity)
        }
    }
    var nextButton: some View {
        CustomButton("Avançar") {
            withAnimation(.linear(duration: 0.5)) {
                if currentTab < 2 {
                    currentTab += 1
                } else {
                    CoordinatorViewModel.shared.changeUIState(.tabBar)
                }
            }
        }
    }
    func onboardingItem(_ type: OnboardingItem) -> some View {
        VStack(spacing: .scaled(24)) {
            type.image
                .resizable()
                .scaledToFit()
                .frame(width: type.imageSize.width, height: type.imageSize.height)
                .frame(height: .scaled(300))
            type.titleImage
                .resizable()
                .scaledToFit()
                .frame(height: .scaled(50))
                .frame(height: .scaled(70))
            Text(type.description)
                .customFont(16, font: .ubuntu, weight: .regular)
                .lineSpacing(.scaled(12))
                .foregroundColor(Constants.Colors.onboardingDescription)
                .frame(height: .scaled(110), alignment: .top)
        }
        .padding(.bottom, .scaled(50))
    }
    func setupCirclesColor() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Constants.Colors.onboardingTabViewCurrentPageIndicator)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Constants.Colors.onboardingTabViewOtherPagesIndicator)
      }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
