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
        .padding(.bottom, appState.bottomTabViewSpacing)
        .navigationTitle("Third View")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            appState.isShowingBottomTabView = false
        }
        .toolbar(appState.isShowingBottomTabView ? .visible : .hidden, for: .tabBar)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ThirdView()
                .environmentObject(AppState())
                .navBarAttributes()
        }
    }
}
