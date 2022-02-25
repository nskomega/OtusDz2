//
//  FourthScreen.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 25.02.2022.
//

import SwiftUI
import SwiftUIRouter

struct FourthScreen: View {
    @Environment(\.router) var router

    var body: some View {
        NavigationView {
            VStack {
                Text("Третий экран")
                Button("Pop") {
                  router.pop()
                }
            }
        }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
    }
}

struct FourthScreen_Previews: PreviewProvider {
    static var previews: some View {
        FourthScreen()
    }
}
