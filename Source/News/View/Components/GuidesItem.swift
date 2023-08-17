//
//  GuidesItem.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct GuidesItem: View {
    var guide: Guide
    
    var body: some View {
        Button {
            //
        } label: {
            HStack {
                Image(guide.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .scaled(72), height: .scaled(72))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack(alignment: .leading, spacing: .scaled(8)) {
                    Text(guide.title)
                        .customFont(14, font: .ubuntu, weight: .medium)
                        .foregroundColor(Constants.Colors.newsItemTitleFont)
                    Text(guide.author)
                        .customFont(12, font: .ubuntu, weight: .regular)
                        .foregroundColor(Constants.Colors.newsItemAuthorFont)
                }
                .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }

    }
}

struct GuidesItem_Previews: PreviewProvider {
    static var previews: some View {
        GuidesItem(guide: Guide(title: "Lidando com a Ansiedade de Separação", image: "NewsItemImageMock1", author: "Maria Carmen"))
    }
}
