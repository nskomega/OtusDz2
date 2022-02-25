//
//  MainTabView.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 25.02.2022.
//

import SwiftUI

struct MainTabView: View {

    var body: some View {
        TabView() {

            ArticleListView(articles: Article.previewData)
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }.tag(0)
            SecondScreen()
                .tabItem {
                    Label("Second", systemImage: "rectangle.leadinghalf.filled")
                }.tag(2)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
