//
//  DiscoverFilterExtraOption.swift
//  Buddy
//
//  Created by Hugo Silva on 19/07/23.
//

import SwiftUI

struct DiscoverFilterExtraOption: View {
    var type: DiscoverFilterExtraOptionType
    @Binding var bind: String
    
    var body: some View {
        HStack {
            Text(type.title)
                .customFont(14, font: .ubuntu, weight: .medium)
            Spacer()
            Menu {
                Button {
                    bind = ""
                } label: {
                    Text("Qualquer")
                }
                ForEach(type.options, id: \.self) { option in
                    Button {
                        bind = option
                    } label: {
                        Text(option)
                    }
                }
            } label: {
                HStack {
                    Text(bind.isEmpty ? "Qualquer" : bind)
                        .customFont(14, font: .ubuntu, weight: .regular)
                    Image(systemName: "chevron.right")
                        .font(.system(size: .scaled(14)))
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct DiscoverFilterExtraOption_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverFilterExtraOption(type: .care, bind: .constant(""))
    }
}
