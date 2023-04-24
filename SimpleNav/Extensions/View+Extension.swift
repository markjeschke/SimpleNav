//
//  View+Extension.swift
//  SimpleNav
//
//  Created by Mark Jeschke on 4/24/23.
//

import SwiftUI

extension View {
    func navBarAttributes() -> some View {
        let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .systemCyan
            appearance.shadowColor = .clear
            appearance.shadowImage = nil
            appearance.titleTextAttributes = [
                .foregroundColor: UIColor.white,
            ]
            appearance.largeTitleTextAttributes = [
                .foregroundColor: UIColor.white,
            ]

            let barButtonItemAppearance = UIBarButtonItemAppearance(style: .plain)
            barButtonItemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
            barButtonItemAppearance.disabled.titleTextAttributes = [.foregroundColor: UIColor.lightText]
            barButtonItemAppearance.highlighted.titleTextAttributes = [.foregroundColor: UIColor.label]
            barButtonItemAppearance.focused.titleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.buttonAppearance = barButtonItemAppearance
            appearance.backButtonAppearance = barButtonItemAppearance
            appearance.doneButtonAppearance = barButtonItemAppearance
            let image = UIImage(systemName: "chevron.backward")?.withTintColor(.white, renderingMode: .alwaysOriginal)
            appearance.setBackIndicatorImage(image, transitionMaskImage: image)

            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().tintColor = .white
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().compactScrollEdgeAppearance = appearance

        return self
    }

    func tabViewStyle(backgroundColor: Color? = nil,
                      itemColor: Color? = nil,
                      selectedItemColor: Color? = nil,
                      badgeColor: Color? = nil) -> some View {
        onAppear {
            let itemAppearance = UITabBarItemAppearance()
            if let uiItemColor = itemColor?.uiColor {
                itemAppearance.normal.iconColor = uiItemColor
                itemAppearance.normal.titleTextAttributes = [
                    .foregroundColor: uiItemColor
                ]
            }
            if let uiSelectedItemColor = selectedItemColor?.uiColor {
                itemAppearance.selected.iconColor = uiSelectedItemColor
                itemAppearance.selected.titleTextAttributes = [
                    .foregroundColor: uiSelectedItemColor
                ]
            }
            if let uiBadgeColor = badgeColor?.uiColor {
                itemAppearance.normal.badgeBackgroundColor = uiBadgeColor
                itemAppearance.selected.badgeBackgroundColor = uiBadgeColor
            }

            let appearance = UITabBarAppearance()
            if let uiBackgroundColor = backgroundColor?.uiColor {
                appearance.backgroundColor = uiBackgroundColor
                appearance.backgroundEffect = .init(style: .systemThickMaterialDark)
            }

            appearance.stackedLayoutAppearance = itemAppearance
            appearance.inlineLayoutAppearance = itemAppearance
            appearance.compactInlineLayoutAppearance = itemAppearance

            UITabBar.appearance().standardAppearance = appearance
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}
