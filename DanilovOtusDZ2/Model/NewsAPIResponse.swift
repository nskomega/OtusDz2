//
//  NewsAPIResponse.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 24.02.2022.
//

import Foundation

struct NewsAPIResponse: Decodable {

    let status: String
    let totalResults: Int?
    let articles: [Article]?

    let code: String?
    let message: String?
}
