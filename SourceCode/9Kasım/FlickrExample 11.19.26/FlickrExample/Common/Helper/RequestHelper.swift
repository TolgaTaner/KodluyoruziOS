//
//  RequestHelper.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation
import Alamofire



final class RequestHelper {
    
    enum Path:String {
        case recentPhoto = "/services/rest"
        case unknown
    }
    
//    enum Queries {
//        case recentPhoto(item:String)
//        case unknown
//    }
    
    static private let apiKey = "56375ad462a4b97bd9d9b4fe27a8ff57"
    //static let shared:RequestHelper = RequestHelper(queryItemList: [])
    private var path:Path = .unknown
    private var urlComponents:URLComponents = URLComponents()
    var method:HTTPMethod = .get
    
    
    init(queryItemList:[URLQueryItem],path:Path = .recentPhoto) {
        configureUrlComponents(queryItemList: queryItemList)
    }
    
    private func configureUrlComponents(queryItemList:[URLQueryItem]){
        urlComponents = URLComponents(scheme: "https", host: "api.flickr.com", path: path.rawValue, queryItems: queryItemList)
        print(urlComponents.url?.absoluteString)
    }
}

