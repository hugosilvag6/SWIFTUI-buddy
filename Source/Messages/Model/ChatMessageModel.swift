//
//  ChatMessageModel.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import Foundation

struct ChatMessageModel: Identifiable {
    let id: String
    let message: String
    let time: String
    let isMe: Bool
}

var MOCK_CHAT_MESSAGES: [ChatMessageModel] = [
    .init(id: "0", message: "Olá tudo bem? entramos em contato pois você foi escolhido para adotar o Brutus!", time: "12:15", isMe: false),
    .init(id: "1", message: "Serio!? Que ótimo", time: "12:20", isMe: true),
    .init(id: "2", message: "Quando eu posso fazer a visita para conhecer ele?", time: "12:20", isMe: true),
    .init(id: "3", message: "Que tal na terça-feira?", time: "12:22", isMe: false),
    .init(id: "4", message: "Claro vou sim!!", time: "12:25", isMe: true)
]
