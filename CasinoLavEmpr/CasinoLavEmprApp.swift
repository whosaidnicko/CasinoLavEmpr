//
//  CasinoLavEmprApp.swift
//  CasinoLavEmpr
//
//  Created by Nicolae Chivriga on 05/02/2025.
//

import SwiftUI

@main
struct CasinoLavEmprApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoaQafa()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

