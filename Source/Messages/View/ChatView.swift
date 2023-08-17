//
//  ChatView.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import SwiftUI

struct ChatView: View {
    @State var newMessage = ""
    
    var body: some View {
        ZStack {
            Constants.Colors.messagesChatViewBackground
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                ChatHeader()
                ZStack(alignment: .bottom) {
                    Color.white
                        .clipShape(RoundedCorners(radius: 31, corners: [.topLeft, .topRight]))
                        .edgesIgnoringSafeArea(.bottom)
                        .shadow(color: .black.opacity(0.2), radius: 3)
                    ScrollView(showsIndicators: false) {
                        VStack {
                            ForEach(MOCK_CHAT_MESSAGES) { msg in
                                ChatMessageBox(message: msg)
                            }
                            ForEach(MOCK_CHAT_MESSAGES) { msg in
                                ChatMessageBox(message: msg)
                            }
                        }
                        .padding(.scaled(24))
                        .padding(.bottom, .scaled(64))
                    }
                    
                    
                    HStack(spacing: 0) {
                        Circle()
                            .fill(Color.orange)
                            .overlay (
                                Image(systemName: "plus")
                                    .foregroundColor(.black)
                            )
                            .padding(.scaled(12))
                        TextField("Digite sua mensagem...", text: $newMessage)
                            .customFont(16, font: .ubuntu, weight: .regular)
                            .padding(.trailing, .scaled(12))
                    }
                    .frame(height: .scaled(64))
                    .background (
                        ZStack {
                            Capsule()
                                .fill(.white)
                            Capsule()
                                .stroke(Constants.Colors.messagesChatTextfieldStroke)
                        }
                    )
                    .padding(.horizontal, .scaled(24))
                }
            }
        }
        .navigationBarHidden(true)
    }
}

extension ChatView {
    func getMessage(message: ChatMessageModel) -> some View {
        VStack(alignment: message.isMe ? .trailing : .leading) {
            VStack {
                Text(message.message)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(message.isMe ? Constants.Colors.messagesChatMessageIsMeBackground : Constants.Colors.messagesChatMessageNotMeBackground)
            )
            Text(message.time)
                .customFont(14, font: .ubuntu, weight: .regular)
        }
        .padding(message.isMe ? .leading : .trailing, .scaled(38))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
