//
//  HomeView.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var appState: AppState

    var body: some View {
        VStack {
            NavigationLink("Go to Fourth View", destination: FourthView())
                .tint(.cyan)
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline) // <- If this is removed, the default display mode is large title.
        .navigationTitle("Home View")
        .navBarAttributes()
        .tint(.white)
        .onAppear {
            appState.isShowingBottomTabBar = true
        }
        .toolbar(appState.isShowingBottomTabBar ? .visible : .hidden, for: .tabBar)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
                .environmentObject(AppState())
        }
    }
}
