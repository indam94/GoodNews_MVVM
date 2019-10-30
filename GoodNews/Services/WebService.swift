//
//  WebService.swift
//  GoodNews
//
//  Created by DONGGUN LEE on 10/30/19.
//  Copyright © 2019 DONGGUN LEE. All rights reserved.
//

import Foundation

class WebService{
    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()){
        URLSession.shared.dataTask(with: url, completionHandler: {data, response ,error in
            
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data{
                
                print(data)
                
            }
            
            }).resume()
    }
}
