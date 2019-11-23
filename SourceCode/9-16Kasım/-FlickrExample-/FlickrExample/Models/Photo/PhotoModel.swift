//
//  PhotoModel.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


struct PhotoModel:Decodable {
    
//    enum CodingKeys:String,CodingKey {
//        case isFamily = "isfamily"
//        case isPublic = "ispublic"
//        case isFriend = "isfriend"
//        case id, farm, owner, secret, server, title
//    }
    
    let id, owner, secret, server: String
    let farm: Int
    let title: String
    let ispublic, isfriend, isfamily: Int
    let datetaken: String
    let ownername, iconserver: String
    let iconfarm: Int
    
    var imageUrl:String {
        return "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
    }
    
}
/*
 struct Post: Codable {
 let photos: Photos
 let stat: String
 }
 
 // MARK: - Photos
 struct Photos: Codable {
 let page, pages, perpage: Int
 let photo: [Photo]
 }
 
 // MARK: - Photo
 struct Photo: Codable {
 let id, owner, secret, server: String
 let farm: Int
 let title: String
 let ispublic, isfriend, isfamily: Int
 let datetaken: String
 let ownername, iconserver: String
 let iconfarm: Int
 
 func getPhotoUrl() -> String {
 "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
 }
 
 func getProfilePhoto() -> String {
 "https://farm\(farm).staticflickr.com/\(server)/buddyicons/\(owner).jpg"
 }
 }
 
 URLQueryItem(name: "extras", value: "owner_name,icon_server,date_taken")
 */
