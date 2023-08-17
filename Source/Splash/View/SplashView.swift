//
//  SplashView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        ZStack {
            Constants.Colors.splashBackground
                .edgesIgnoringSafeArea(.vertical)
            
            Image("SplashLogo")
                .resizable()
                .scaledToFit()
                .frame(width: .scaled(239))
        }
        .onAppear{onAppear()}
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
