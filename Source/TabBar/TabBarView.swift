//
//  TabBarView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct TabBarView: View {
    @State var currentTab: TabBarType = .dashboard
    @EnvironmentObject var screenSize: ScreenSize
    
    var body: some View {
        ZStack {
            
            VStack {
                switch currentTab {
                case .dashboard: DashboardView()
                case .discover: DiscoverView()
                case .messages: MessagesView()
                case .news: GuidesView()
                case .account: AccountView()
                }
            }
            
            HStack {
                ForEach(TabBarType.allCases, id: \.self) { type in
                    item(type)
                }
            }
            .padding(.vertical, .scaled(20))
            .background(background)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

extension TabBarView {
    func item(_ type: TabBarType) -> some View {
        Button {
            withAnimation(.linear(duration: 0.2)) {
                currentTab = type
            }
        } label: {
            Image(type.icon)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: .scaled(24), height: .scaled(24))
                .foregroundColor(type == currentTab ? Constants.Colors.tabbarSelectedIcon : Constants.Colors.tabbarIcon)
                .frame(maxWidth: .infinity)
        }
    }
    var background: some View {
        Color.white
            .edgesIgnoringSafeArea(.bottom)
            .shadow(color: Color.gray.opacity(0.2), radius: 5)
            .background(
                GeometryReader { proxy in
                    Color.clear
                        .onAppear { screenSize.tabBarHeight = proxy.size.height }
                }
            )
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(ScreenSize())
    }
}
