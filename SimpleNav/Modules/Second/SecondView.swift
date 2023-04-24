//
//  SecondView.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

struct SecondView: View {

    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            NavigationLink("Go to Third View", destination: ThirdView())
                .tint(.cyan)
        }
        .padding()
        .navigationTitle("Second View")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            appState.isShowingBottomTabBar = true
        }
        .toolbar(appState.isShowingBottomTabBar ? .visible : .hidden, for: .tabBar)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SecondView()
                .environmentObject(AppState())
        }
    }
}
