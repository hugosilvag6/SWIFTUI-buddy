//
//  DiscoverView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct DiscoverView: View {
    @State var filter = DiscoverFilterModel()
    @State var showingInfo = false
    @EnvironmentObject var screenSize: ScreenSize
    
    var body: some View {
        ZStack(alignment: .top) {
            DiscoverPetImage(showingInfo: $showingInfo)
            
            filterButton
            
            VStack(alignment: .leading, spacing: .scaled(4)) {
                Spacer()
                    .frame(height: showingInfo ? .scaled(340) : .none)
                
                HStack {
                    DiscoverPetMainInfo(showingInfo: showingInfo)
                    Spacer()
                    switchButton
                }
                .padding(.horizontal, .scaled(24))
                
                dislikeAndLike
                
                ScrollView {
                    VStack(alignment: .leading, spacing: .scaled(24)) {
                        infoCards
                        infoText
                    }
                    .padding(.scaled(24))
                    .padding(.bottom, .scaled(75))
                }
                .opacity(showingInfo ? 1: 0)
                .frame(height: showingInfo ? .none : 0)
            }
            
            DiscoverPetInfoFloatingButtons(showingInfo: showingInfo)
        }
        .padding(.bottom, screenSize.tabBarHeight)
    }
}

extension DiscoverView {
    var filterButton: some View {
        NavigationLink {
            DiscoverFilterView(filter: $filter)
        } label: {
            Image(systemName: "line.3.horizontal.decrease.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: .scaled(24), height: .scaled(24))
                .foregroundColor(Constants.Colors.discoverFilterButton)
                .padding(.scaled(24))
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
    var switchButton: some View {
        Button {
            withAnimation(.linear(duration: 0.3)) {
                showingInfo.toggle()
            }
        } label: {
            ZStack {
                Image(systemName: "arrow.up.circle")
                    .font(.system(size: 33, weight: .semibold))
                    .foregroundColor(.white)
                    .opacity(showingInfo ? 0 : 1)
                Image(systemName: "arrow.down.circle")
                    .font(.system(size: 33, weight: .semibold))
                    .foregroundColor(Constants.Colors.discoverPetInfoCloseButton)
                    .opacity(showingInfo ? 1 : 0)
            }
        }
    }
    var dislikeAndLike: some View {
        HStack(spacing: .scaled(16)) {
            Button {
                //
            } label: {
                Image("DiscoverDislikeIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .scaled(64), height: .scaled(64))
            }
            
            Button {
                print("like clicado")
            } label: {
                Image("DiscoverLikeIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .scaled(64), height: .scaled(64))
            }
        }
        .frame(maxWidth: .infinity)
        .overlay(backButton, alignment: .leading)
        .padding(.scaled(24))
        .opacity(showingInfo ? 0 : 1)
        .frame(height: showingInfo ? 0 : .none)
    }
    var backButton: some View {
        Button {
            //
        } label: {
            Image("DiscoverBackIcon")
                .resizable()
                .scaledToFit()
                .frame(width: .scaled(20), height: .scaled(20))
                .padding(.leading, .scaled(20))
        }
        
    }
    var infoCards: some View {
        VStack (spacing: .scaled(16)) {
            HStack(spacing: .scaled(16)) {
                DiscoverPetInfoDetailCard(type: .sex)
                DiscoverPetInfoDetailCard(type: .age)
            }
            HStack(spacing: .scaled(16)) {
                DiscoverPetInfoDetailCard(type: .race)
                DiscoverPetInfoDetailCard(type: .weight)
            }
        }
    }
    var infoText: some View {
        Text("Oi, meu nome é Vicente, tenho só 5 meses e estou a procura de um dono pra mim! \nSou muito bagunceiro, porque ainda sou muito pequeno e quero descobrir o mundo, quero correr e brincar bastante, e prometo te obedecer quando você precisa!")
            .customFont(16, font: .ubuntu, weight: .regular)
            .lineSpacing(.scaled(8))
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverView()
                .environmentObject(ScreenSize())
        }
    }
}
