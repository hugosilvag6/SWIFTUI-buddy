//
//  CustomLoadingView.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import SwiftUI

struct CustomLoadingView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.6)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 24) {
                Text("Carregando...")
                    .foregroundColor(.white)
                ProgressView()
            }
        }
    }
}

struct CustomLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoadingView()
    }
}
