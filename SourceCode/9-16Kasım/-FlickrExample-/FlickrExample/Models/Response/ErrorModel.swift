//
//  ErrorModel.swift
//  FlickrExample
//
//  Created by Tolga Taner on 16.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


struct ErrorModel {
    
    let description:String
    let statusCode:Int
    
    
    init(statusCode:Int, description:String) {
        self.statusCode = statusCode
        self.description = description
    }
    
    init(error:Error) {
        self.statusCode = error._code
        self.description = error.localizedDescription
    }
}
