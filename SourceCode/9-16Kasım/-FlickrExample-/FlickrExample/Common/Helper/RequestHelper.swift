//
//  RequestHelper.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation
import Alamofire

protocol ResponseDataSource:class {
    func photoListSuccess(_ photoList:[PhotoModel])
    func photoListFailure(_ error:ErrorModel)
}

final class RequestHelper {
    
    weak var datasource:ResponseDataSource?
    
    enum Path:String {
        case recentPhoto = "/services/rest"
        case unknown
    }
    
    enum Queries{
        case recentPhoto
        case unknown
        
        var queryList:[URLQueryItem]?{
            switch self {
            case .recentPhoto:
                return [URLQueryItem(name: "method", value: "flickr.photos.getRecent"),
                URLQueryItem(name: "per_page", value: "20"),
                URLQueryItem(name: "api_key", value: RequestHelper.apiKey),
                URLQueryItem(name: "safe_search", value: "1"),
                URLQueryItem(name: "format", value: "json"),
                URLQueryItem(name: "nojsoncallback", value: "1"),
                URLQueryItem(name: "extras", value: "owner_name,icon_server,date_taken")
                ]
               
            default:
                break
            }
            return nil
        }
    }
    
    static private let apiKey = "56375ad462a4b97bd9d9b4fe27a8ff57"
    
    private var path:Path = .unknown
    private var urlComponents:URLComponents = URLComponents()
    var method:HTTPMethod = .get
    private var queryType: Queries = .unknown
    
    init(queryType:Queries, path:Path = .recentPhoto) {
        self.queryType = queryType
        self.path = path
        urlComponents = URLComponents(scheme: "https", host: "api.flickr.com", path: path.rawValue, queryItems: queryType.queryList ?? [])
    }
    
    func getPhotoList(){
        do {
            let url = try urlComponents.asURL()
            Alamofire.request(url, method: method, parameters: nil, encoding: URLEncoding.default, headers: nil)
                .responseJSON { [weak self] (response) in
                    guard let strongSelf = self else {return}
                    switch response.result {
                    case .success(_):
                        guard let data = response.data
                            else{
                                print("no recent photo")
                                return
                        }
                        
                        let baseResponse = try? JSONDecoder().decode(BaseResponseModel.self, from: data)
                        strongSelf.datasource?.photoListSuccess((baseResponse?.photos.photo)!)
                    
                    case .failure(let error):
                        let error = ErrorModel(error: error)
                        strongSelf.datasource?.photoListFailure(error)
                    }
            }
            
//
//            Alamofire.request(url)
//                .responseJSON { (response) in
//                    print(response.result)
//            }
        }
        catch(let error) {
            print(error)
            print(error.localizedDescription)
            print(error._code)
        }
    }
    
}

