//
//  AppState.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import Foundation

@MainActor
class AppState: ObservableObject {

    let bottomTabViewSpacing: CGFloat = 45
    @Published var isShowingBottomTabView: Bool = true

}
