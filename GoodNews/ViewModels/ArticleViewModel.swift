//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by DONGGUN LEE on 10/30/19.
//  Copyright © 2019 DONGGUN LEE. All rights reserved.
//

import Foundation

struct ArticleListViewModel{
    let article: [Article]
}

extension ArticleListViewModel{
    var numberOfSection: Int{
        return 1
    }
    
    func numberOfRowInSection(_ section: Int) -> Int{
        return self.article.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel{
        let article = self.article[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel{
    private let article: Article
}

extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel{
    var title: String{
        return self.article.title
    }
    
    var description: String{
        return self.article.description
    }
}
