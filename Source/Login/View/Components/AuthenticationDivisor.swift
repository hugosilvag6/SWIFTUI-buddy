//
//  AuthenticationDivisor.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct AuthenticationDivisor: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .frame(height: 1)
            Text("OU")
                .customFont(12)
                .padding(.horizontal, .scaled(10))
            Rectangle()
                .frame(height: 1)
        }
        .padding(.vertical, .scaled(8))
    }
}

struct AuthenticationDivisor_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationDivisor()
    }
}
