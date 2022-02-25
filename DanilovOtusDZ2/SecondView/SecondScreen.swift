//
//  SecondScreen.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 24.02.2022.
//

import SwiftUI
import SwiftUIRouter

struct SecondScreen: View {

    @Environment(\.router) var router

    var body: some View {
        NavigationView {
            VStack {
                RouterLink("/third") {
                  Text("перейти на 2 экран")
                }
            }
        }.ignoresSafeArea()
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
