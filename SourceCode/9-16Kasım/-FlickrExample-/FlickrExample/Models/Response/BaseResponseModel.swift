//
//  BaseResponseModel.swift
//  FlickrExample
//
//  Created by Tolga Taner on 16.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


struct BaseResponseModel:Decodable {
    
    
    let stat:String
    let photos:PhotoResponseModel
    
}
