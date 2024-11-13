//
//  SwiftFirebaseApp.swift
//  SwiftFirebase
//
//  Created by Anıl on 13.11.2024.
//

import SwiftUI
import Firebase

@main
struct SwiftFirebaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
        
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
