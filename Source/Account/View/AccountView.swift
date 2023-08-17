//
//  AccountView.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct AccountView: View {
    var manager: AccountManagerProtocol = AccountManager()
    
    var body: some View {
        VStack(alignment: .leading, spacing: .scaled(48)) {
            
            // MARK: - Profile
            AccountProfileSection()
            
            // MARK: - Account
            accountSettings
            
            // MARK: - More
            moreOptions
            
            Spacer()
        }
        .padding(.horizontal, .scaled(24))
    }
}

extension AccountView {
    var accountSettings: some View {
        VStack(alignment: .leading, spacing: .scaled(24)) {
            Text("Configurações da conta")
                .customFont(14, font: .ubuntu, weight: .bold)
                .foregroundColor(Constants.Colors.accountSectionTitleFont)
            VStack(spacing: .scaled(32)) {
                AccountMenuItem(type: .changePassword) {
                    //
                }
                AccountMenuItem(type: .signOut) {
                    showAlert("Tem certeza que deseja sair?") {
                        signOut()
                    }
                }
            }
        }
    }
    var moreOptions: some View {
        VStack(alignment: .leading, spacing: .scaled(24)) {
            Text("Mais")
                .customFont(14, font: .ubuntu, weight: .bold)
                .foregroundColor(Constants.Colors.accountSectionTitleFont)
            VStack(spacing: .scaled(32)) {
                AccountMenuItem(type: .contact) {
                    //
                }
                AccountMenuItem(type: .help) {
                    //
                }
                AccountMenuItem(type: .rateApp) {
                    //
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
