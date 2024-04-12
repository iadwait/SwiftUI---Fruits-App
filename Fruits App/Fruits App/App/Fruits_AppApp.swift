//
//  Fruits_AppApp.swift
//  Fruits App
//
//  Created by Adwait Barkale on 08/04/24.
//

import SwiftUI

@main
struct Fruits_AppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
