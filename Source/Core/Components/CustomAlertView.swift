//
//  CustomAlertView.swift
//  Buddy
//
//  Created by Hugo Silva on 16/08/23.
//

import SwiftUI

struct CustomAlert {
    var text: String
    var action: (() -> Void)?
}

struct CustomAlertView: View {
    var alert = CoordinatorViewModel.shared.showAlert
    
    var body: some View {
        if let alert {
            ZStack {
                Color.black.opacity(0.6)
                    .edgesIgnoringSafeArea(.vertical)
                    .alert(alert.text, isPresented: .constant(true)) {
                        Button {
                            CoordinatorViewModel.shared.showAlert = nil
                        } label: {
                            Text("Voltar")
                        }
                        if let action = alert.action {
                            Button {
                                CoordinatorViewModel.shared.showAlert = nil
                                action()
                            } label: {
                                Text("Ok")
                            }
                        }
                    }
            }
        }
    }
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView()
    }
}
