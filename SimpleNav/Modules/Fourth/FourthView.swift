//
//  FourthView.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

struct FourthView: View {

    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            Text("Fourth View")
        }
        .navigationTitle("Fourth View")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            appState.isShowingBottomTabBar = false
        }
        .toolbar(appState.isShowingBottomTabBar ? .visible : .hidden, for: .tabBar)
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FourthView()
                .environmentObject(AppState())
        }
    }
}
