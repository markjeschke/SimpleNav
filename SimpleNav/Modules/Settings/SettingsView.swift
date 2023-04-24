//
//  SettingsView.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

struct SettingsView: View {

    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            Text("Settings View")
        }
        .navigationTitle("Settings View")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            appState.isShowingBottomTabBar = false
        }
        .toolbar(appState.isShowingBottomTabBar ? .visible : .hidden, for: .tabBar)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(AppState())
    }
}
