//
//  TabBarType.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import Foundation

enum TabBarType: Equatable, CaseIterable {
    case dashboard, discover, messages, news, account
    
    var icon: String {
        switch self {
        case .dashboard: return "TabBarDashboard"
        case .discover: return "TabBarDiscover"
        case .messages: return "TabBarMessages"
        case .news: return "TabBarNews"
        case .account: return "TabBarAccount"
        }
    }
}
