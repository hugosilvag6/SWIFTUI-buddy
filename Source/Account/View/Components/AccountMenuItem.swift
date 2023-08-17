//
//  AccountMenuItem.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct AccountMenuItem: View {
    var type: AccountMenuItemType
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                type.image
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: .scaled(16), height: .scaled(16))
                    .foregroundColor(type == .signOut ? Constants.Colors.accountMenuItemSignoutFont : Constants.Colors.accountMenuItemIcon)
                Text(type.text)
                    .customFont(12, font: .ubuntu, weight: .regular)
                    .foregroundColor(type == .signOut ? Constants.Colors.accountMenuItemSignoutFont : Constants.Colors.accountMenuItemTextFont)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 12))
                    .foregroundColor(type == .signOut ? Constants.Colors.accountMenuItemSignoutFont : Constants.Colors.accountMenuItemIcon)
            }
        }
    }
}

struct AccountMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        AccountMenuItem(type: .changePassword, action: {})
    }
}

enum AccountMenuItemType: Equatable {
    case changePassword, signOut, contact, help, rateApp
    
    var text: String {
        switch self {
        case .changePassword: return "Trocar senha"
        case .signOut: return "Sair da conta"
        case .contact: return "Contato"
        case .help: return "Ajuda"
        case .rateApp: return "Avaliar o app"
        }
    }
    var image: Image {
        switch self {
        case .changePassword: return Image("AccountMenuItemChangePasswordIcon")
        case .signOut: return Image("AccountMenuItemSignoutIcon")
        case .contact: return Image("AccountMenuItemContactIcon")
        case .help: return Image("AccountMenuItemHelpIcon")
        case .rateApp: return Image("AccountMenuItemStarIcon")
        }
    }
}
