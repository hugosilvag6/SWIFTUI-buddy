//
//  MessagesChatItem.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct MessagesChatItem: View {
    var body: some View {
        VStack(spacing: .scaled(16)) {
            
            NavigationLink {
                ChatView()
            } label: {
                HStack {
                    image
                    
                    VStack(alignment: .leading, spacing: .scaled(6)) {
                        HStack {
                            name
                            Spacer()
                            time
                        }
                        HStack {
                            lastMessage
                            Spacer()
                            lastSeenIcon
                        }
                    }
                }
            }
            
            Divider()
        }
    }
}

extension MessagesChatItem {
    var image: some View {
        Image("MessagesFirstImageMock")
            .resizable()
            .scaledToFill()
            .frame(width: .scaled(59), height: .scaled(59))
            .clipShape(Circle())
    }
    var name: some View {
        Text("Brutus - Abrigo Aumigos")
            .customFont(15, font: .ubuntu, weight: .bold)
            .lineLimit(1)
            .foregroundColor(Constants.Colors.messagesContactName)
    }
    var time: some View {
        Text("12:25")
            .customFont(12, font: .ubuntu, weight: .medium)
            .foregroundColor(Constants.Colors.messagesLastMessageTime)
    }
    var lastMessage: some View {
        Text("Claro, vou sim!!")
            .customFont(14, font: .ubuntu, weight: .medium)
            .foregroundColor(Constants.Colors.messagesLastMessage)
    }
    var lastSeenIcon: some View {
        Image("MessagesLastSeenIcon")
            .resizable()
            .scaledToFit()
            .frame(width: .scaled(15), height: .scaled(15))
    }
}

struct MessagesChatItem_Previews: PreviewProvider {
    static var previews: some View {
        MessagesChatItem()
    }
}
