//
//  ChatHeader.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import SwiftUI

struct ChatHeader: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
            }

            
            Image("MessagesFirstImageMock")
                .resizable()
                .scaledToFill()
                .frame(width: .scaled(42), height: .scaled(42))
                .clipShape(Circle())
            
            VStack (alignment: .leading, spacing: .scaled(4)) {
                Text("Brutus - Abrigo Aumigos")
                    .customFont(16, font: .ubuntu, weight: .bold)
                Text("Online")
                    .customFont(14, font: .ubuntu, weight: .regular)
            }
            
            Spacer()
            
            Image("ChatViewOptionsIcon")
                .resizable()
                .scaledToFit()
                .frame(height: 22)
        }
        .padding(.vertical)
        .padding(.horizontal, .scaled(24))
    }
}

struct ChatHeader_Previews: PreviewProvider {
    static var previews: some View {
        ChatHeader()
    }
}
