//
//  ThirScreen.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 25.02.2022.
//

import SwiftUI
import SwiftUIRouter

struct ThirdScreen: View {
    @Environment(\.router) var router
    
    var body: some View {
        NavigationView {
            VStack {
                RouterLink("/fourth") {
                  Text("перейти на 3 экран")
                }
                Button("Pop") {
                  router.pop()
                }
            }
        }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
