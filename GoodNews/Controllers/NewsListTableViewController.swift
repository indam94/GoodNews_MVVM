//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by DONGGUN LEE on 10/30/19.
//  Copyright © 2019 DONGGUN LEE. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setup()
    }
    
    private func setup(){
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=c258a28da91c41fda8b9f963ae9548ee")!
        
        WebService().getArticles(url: url){_ in
            
        }
    }
    
}
