//
//  TrendingCell.swift
//  TouYube
//
//  Created by Rubén Belando Sanchez on 23/08/2018.
//  Copyright © 2018 ruben. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    override func fetchVideos() {
        
        ApiService.sharedInstance.fetchTrendingFeed { (videos: [Video]) in
            self.videos = videos
            self.collectionView.reloadData()
        }
        
    }
    
    
}
