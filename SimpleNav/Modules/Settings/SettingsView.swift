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
        .padding(.bottom, appState.bottomTabViewSpacing)
        .navigationTitle("Settings View")
        .onAppear {
            appState.isShowingBottomTabView = false

        }
        .toolbar(appState.isShowingBottomTabView ? .visible : .hidden, for: .tabBar)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView()
                .environmentObject(AppState())
                .navBarAttributes()
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
