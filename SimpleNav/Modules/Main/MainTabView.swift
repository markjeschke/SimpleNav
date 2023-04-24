//
//  MainTabView.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

struct MainTabView: View {

    @EnvironmentObject var appState: AppState

    var body: some View {
        TabView {
            HomeView()
            .tabItem {
                Label("Home",
                      systemImage: "house")
            }
            .tag(0)
            SecondView()
            .tabItem {
                Label("Second View",
                      systemImage: "02.circle")
            }
            .tag(1)
        }
        // Specify custom navigation colors and title colors.
        .navBarAttributes()
        .tint(.white)

        // Specify the bottom TabView colors.
        .tabViewStyle(backgroundColor: nil,
                      itemColor: nil,
                      selectedItemColor: .cyan,
                      badgeColor: .red)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(AppState())
    }
}
