//
//  AccountProfileSection.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct AccountProfileSection: View {
    var body: some View {
        HStack(spacing: .scaled(12)) {
            Image("AccountPictureDefault")
                .resizable()
                .scaledToFit()
                .frame(width: .scaled(72), height: .scaled(72))
            
            VStack (alignment: .leading, spacing: 8) {
                Text("Hugo Silva Garcia")
                    .customFont(16, font: .ubuntu, weight: .bold)
                    .foregroundColor(Constants.Colors.accountUsernameFont)
                Text("+55 (31) 9 9972-0241")
                    .customFont(12, font: .ubuntu, weight: .regular)
                    .foregroundColor(Constants.Colors.accountPhoneFont)
                editProfile
            }
        }
        .padding(.top, .scaled(48))
    }
}

extension AccountProfileSection {
    var editProfile: some View {
        Button {
            //
        } label: {
            HStack(spacing: 4) {
                Text("Editar meus dados")
                Image(systemName: "chevron.right")
            }
            .customFont(12, font: .ubuntu, weight: .bold)
            .foregroundColor(Constants.Colors.accountEditButtonFont)
        }

    }
}

struct AccountProfileSection_Previews: PreviewProvider {
    static var previews: some View {
        AccountProfileSection()
    }
}
