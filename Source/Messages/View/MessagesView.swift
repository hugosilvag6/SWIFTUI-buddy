//
//  MessagesView.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: .scaled(16)) {
                MessagesChatItem()
            }
            .padding(.horizontal, .scaled(24))
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
