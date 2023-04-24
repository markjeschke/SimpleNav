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
        NavigationStack {
            VStack {
                NavigationLink {
                    FourthView()
                } label: {
                    Text("Go to Fourth View")
                        .font(.headline)
                        .fontWeight(.bold)
                        .tint(.cyan)
                }
            }
            .navigationBarTitleDisplayMode(.inline) // <- If this is removed, the default display mode is large title.
            .navigationTitle("Home View")
            .tint(.white)
            .onAppear {
                appState.isShowingBottomTabView = true

            }
            .toolbar(appState.isShowingBottomTabView ? .visible : .hidden, for: .tabBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .tint(.white)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(AppState())
            .navBarAttributes()
    }
}
