//
//  SimpleNavApp.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

@main
struct SimpleNavApp: App {

    // Make this AppState class instance available from the parent SwiftUI view (MainTabView) and its children.
    @StateObject private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(appState)
        }
    }
}
