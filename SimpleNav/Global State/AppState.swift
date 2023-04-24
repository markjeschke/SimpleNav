//
//  AppState.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import Foundation

@MainActor
class AppState: ObservableObject {
    @Published var isShowingBottomTabBar: Bool = true
}
