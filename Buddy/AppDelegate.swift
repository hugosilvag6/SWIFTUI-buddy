//
//  AppDelegate.swift
//  Buddy
//
//  Created by Hugo Silva on 12/08/23.
//

import UIKit
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        configureFirebase()
        return true
    }
    
    func configureFirebase() {
        FirebaseApp.configure()
    }
}
