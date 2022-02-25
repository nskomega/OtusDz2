//
//  ArticleListView.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 24.02.2022.
//

import SwiftUI

struct ArticleListView: View {

    let articles: [Article]
    @State var listViewTypeChoice = 0
    var listTypes = ["Tesla", "Top News"]
    @State private var selectedArticle: Article?
    @StateObject var countriesModel = CountriesModel()

    var body: some View {
        VStack {
            Picker("Lists", selection: $listViewTypeChoice) {
                ForEach(0..<listTypes.count) { index in
                    Text(listTypes[index])
                        .tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            if listViewTypeChoice == 0 {
                List {
                    ForEach(articles) { article in
                        ArticleRowView(article: article)
                            .onTapGesture {
                                selectedArticle = article
                            }
                    }
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .listRowSeparator(.hidden)
                }.animation(.easeInOut)
                .listStyle(.plain)
                .sheet(item: $selectedArticle) {
                    SafariView(url: $0.articleURL)
                        .edgesIgnoringSafeArea(.bottom)
                }
            } else if listViewTypeChoice == 1 {
                List(countriesModel.countries) { country in
                    Spacer()
                    Text(country.name)
                    Text(country.id)
                    Spacer()
                }
                .task {
                    await self.countriesModel.reload()
                }
                .refreshable {
                    await self.countriesModel.reload()
                }
            }
        }
    }
}

struct Country: Identifiable, Codable {
    var id: String
    var name: String
}

@MainActor
class CountriesModel: ObservableObject {
    @Published var countries : [Country] = []

    func reload() async {
        let url = URL(string: "https://www.ralfebert.de/examples/v2/countries.json")!
        let urlSession = URLSession.shared

        do {
            let (data, _) = try await urlSession.data(from: url)
            self.countries = try JSONDecoder().decode([Country].self, from: data)
        }
        catch {
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
}


struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleListView(articles: Article.previewData)
        }
    }
}

