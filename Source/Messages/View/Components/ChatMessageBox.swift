//
//  ChatMessageBox.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import SwiftUI

struct ChatMessageBox: View {
    var message: ChatMessageModel
    
    var body: some View {
        VStack(alignment: message.isMe ? .trailing : .leading, spacing: .scaled(12)) {
            Text(message.message)
                .customFont(15, font: .ubuntu, weight: .regular)
                .lineSpacing(6)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(message.isMe ? Constants.Colors.messagesChatMessageIsMeBackground : Constants.Colors.messagesChatMessageNotMeBackground)
                        .shadow(color: .black.opacity(0.2), radius: 3)
                )
            Text(message.time)
                .customFont(14, font: .ubuntu, weight: .regular)
        }
        .padding(message.isMe ? .leading : .trailing, .scaled(38))
        .frame(maxWidth: .infinity, alignment: message.isMe ? .trailing : .leading)
    }
}

struct ChatMessageBox_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageBox(message: MOCK_CHAT_MESSAGES[0])
    }
}
