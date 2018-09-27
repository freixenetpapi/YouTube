//
//  Video.swift
//  TouYube
//
//  Created by Rubén Belando Sanchez on 19/07/2018.
//  Copyright © 2018 ruben. All rights reserved.
//

import UIKit

struct Video: Decodable {
    
    let title: String?
    let number_of_views: Int?
    let thumbnail_image_name: String?
    let channel: Channel?
    let duration: Int?
//    let uploadDate: NSDate?
    let number_of_likes: Int?
    
}

struct Channel: Decodable {
    let name: String?
    let profile_image_name: String?
    
}
