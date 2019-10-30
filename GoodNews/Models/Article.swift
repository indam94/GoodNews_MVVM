//
//  Article.swift
//  GoodNews
//
//  Created by DONGGUN LEE on 10/30/19.
//  Copyright © 2019 DONGGUN LEE. All rights reserved.
//

import Foundation

struct ArticleList: Decodable{
    let articles: [Article]
}

struct Article: Decodable{
    let title: String
    let description: String
}
