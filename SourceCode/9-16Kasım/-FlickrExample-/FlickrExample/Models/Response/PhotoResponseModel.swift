//
//  PhotoResponseModel.swift
//  FlickrExample
//
//  Created by Tolga Taner on 16.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


struct PhotoResponseModel:Decodable {
    
    let page:Int
    let pages:Int
    let perpage:Int
    //let total:Int
    let photo:[PhotoModel]
    
    
    
}
