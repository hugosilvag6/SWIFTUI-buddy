//
//  DashboardView.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var screenSize: ScreenSize
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: .scaled(24)) {
                DashboardNews()
                DashboardCloseAnimals()
                DashboardGuides()
            }
            .padding(.bottom, screenSize.tabBarHeight + .scaled(16))
        }
        .background(Constants.Colors.dashboardBackground)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(ScreenSize())
    }
}
