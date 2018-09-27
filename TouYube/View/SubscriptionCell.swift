//
//  SubscriptionsCell.swift
//  TouYube
//
//  Created by Rubén Belando Sanchez on 23/08/2018.
//  Copyright © 2018 ruben. All rights reserved.
//

import UIKit

class SubscriptionCell : FeedCell {
    
    override func fetchVideos() {
        
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos: [Video]) in
            self.videos = videos
            self.collectionView.reloadData()
           
        }

    }
    
}
