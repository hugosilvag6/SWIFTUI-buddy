//
//  GuidesView.swift
//  Buddy
//
//  Created by Hugo Silva on 10/07/23.
//

import SwiftUI

struct GuidesView: View {
    @State var selectedCategory: GuidesCategoryType = .behavior
    @State var searchText = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: .scaled(24)) {
            header
            searchBar
            filter
            divider
            
            VStack(alignment: .leading, spacing: .scaled(32)) {
                guidesTitle
                ScrollView {
                    VStack(spacing: .scaled(24)) {
                        ForEach(selectedCategory.mockGuides) { item in
                            GuidesItem(guide: item)
                        }
                    }
                }
            }
            .padding(.horizontal, .scaled(24))
        }
    }
}

extension GuidesView {
    var header: some View {
        Text("Entenda o seu pet")
            .customFont(20, font: .ubuntu, weight: .medium)
            .foregroundColor(Constants.Colors.newsTitle)
            .padding(.horizontal, .scaled(24))
    }
    var searchBar: some View {
        HStack {
            Image("NewsSearchIcon")
                .resizable()
                .scaledToFit()
                .frame(width: .scaled(16), height: .scaled(16))
            TextField("Pesquisar", text: $searchText)
                .customFont(14, font: .ubuntu, weight: .light)
                .foregroundColor(Constants.Colors.newsSearchTextfieldFont)
        }
        .frame(height: .scaled(40))
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: Color.gray.opacity(0.3), radius: 3, y: 3.5)
        )
        .padding(.horizontal, .scaled(24))
    }
    var filter: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: .scaled(24)) {
                ForEach(GuidesCategoryType.allCases, id: \.title) { type in
                    Button {
                        selectedCategory = type
                    } label: {
                        Text(type.title)
                            .customFont(15, font: .ubuntu, weight: selectedCategory == type ? .medium : .regular)
                            .foregroundColor(selectedCategory == type ? Constants.Colors.newsChosenFilterFont : Constants.Colors.newsOtherFiltersFont)
                    }
                }
            }
            .customFont(14, font: .ubuntu, weight: .regular)
            .padding(.horizontal, .scaled(24))
            .foregroundColor(Constants.Colors.newsOtherFiltersFont)
        }
    }
    var divider: some View {
        Rectangle()
            .fill(Constants.Colors.newsDividerBackground)
            .frame(height: 1)
            .padding(.horizontal, .scaled(24))
    }
    var guidesTitle: some View {
        Text("Guias de \(selectedCategory.title.lowercased())")
            .customFont(18, font: .ubuntu, weight: .medium)
            .foregroundColor(Constants.Colors.newsFilterTitleFont)
    }
}

struct GuidesView_Previews: PreviewProvider {
    static var previews: some View {
        GuidesView()
    }
}
