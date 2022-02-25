//
//  DanilovOtusDZ2App.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 24.02.2022.
//

import SwiftUI
import SwiftUIRouter

@main
struct DanilovOtusDZ2App: App {
    var body: some Scene {
        WindowGroup {
            VStack{
                MainTabView()
            }.ignoresSafeArea()
            .environment(\.router, .main)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
extension NavigationRouter {
    static var main = NavigationRouter(routes: .all)
}
