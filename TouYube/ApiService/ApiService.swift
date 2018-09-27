//
//  ApiService.swift
//  TouYube
//
//  Created by Rubén Belando Sanchez on 12/08/2018.
//  Copyright © 2018 ruben. All rights reserved.
//

import UIKit

class ApiService: NSObject {
    
    static let sharedInstance = ApiService()
    
    let baseUrl = "https://s3-us-west-2.amazonaws.com/youtubeassets"
    
    func fetchVideos (completion: @escaping ([Video]) -> ()) {
        fetchFeedForUrlString (urlString: "\(baseUrl)/home_num_likes.json", completion: completion)
    }
    
    func fetchTrendingFeed (completion: @escaping ([Video]) -> ()) {
        fetchFeedForUrlString (urlString: "\(baseUrl)/trending.json", completion: completion)
    }
    
    func fetchSubscriptionFeed (completion: @escaping ([Video]) -> ()) {
        fetchFeedForUrlString (urlString: "\(baseUrl)/subscriptions.json", completion: completion)
    }
    
    func fetchFeedForUrlString (urlString: String, completion: @escaping ([Video]) -> ()) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else {return}

            do {
                let json = try JSONDecoder().decode([Video].self, from: data)

                DispatchQueue.main.async {
                    completion(json)
                }
                
            } catch let jsonError {
                print(jsonError)
            }

            }.resume()
        
    }

}
