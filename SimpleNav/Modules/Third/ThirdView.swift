//
//  ThirdView.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

struct ThirdView: View {

    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            Text("Third View")
        }
        .navigationTitle("Third View")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            appState.isShowingBottomTabBar = false
        }
        .toolbar(appState.isShowingBottomTabBar ? .visible : .hidden, for: .tabBar)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ThirdView()
                .environmentObject(AppState())
        }
    }
}
