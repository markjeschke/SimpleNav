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
        NavigationStack {
            VStack {
                NavigationLink {
                    ThirdView()
                } label: {
                    Text("Go to Third View")
                        .font(.headline)
                        .fontWeight(.bold)
                        .tint(.cyan)
                }
            }
            .navigationTitle("Second View")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                appState.isShowingBottomTabView = true
            }
            .toolbar(appState.isShowingBottomTabView ? .visible : .hidden, for: .tabBar)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
            SecondView()
                .environmentObject(AppState())
                .navBarAttributes()
    }
}
