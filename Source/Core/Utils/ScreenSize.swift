//
//  ScreenSize.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

class ScreenSize: ObservableObject {
    var width: CGFloat
    var height: CGFloat
    @Published var tabBarHeight: CGFloat
    
    init(size: CGSize) {
        self.width = size.width
        self.height = size.height
        self.tabBarHeight = .scaled(61)
    }
    init() {
        self.width = 393
        self.height = 669
        self.tabBarHeight = .scaled(61)
    }
}
