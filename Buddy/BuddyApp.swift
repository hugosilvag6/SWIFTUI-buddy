//
//  BuddyApp.swift
//  Buddy
//
//  Created by Hugo Silva on 08/07/23.
//

import SwiftUI

@main
struct BuddyApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
}
