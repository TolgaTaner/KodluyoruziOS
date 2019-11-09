//
//  UrlComponentsExtension.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


extension URLComponents  {
    init(scheme:String,host:String,path:String,queryItems:[URLQueryItem]) {
        self.init()
        self.host = host
        self.scheme = scheme
        self.path = path
        self.queryItems = queryItems
    }
}

