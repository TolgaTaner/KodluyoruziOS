//
//  ViewController.swift
//  FlickrExample
//
//  Created by Tolga Taner on 8.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

final class ListPhotoViewController: UIViewController {

    private let photoService:RequestHelper = RequestHelper(queryItemList: [URLQueryItem(name: "method", value: "flickr.photos.getRecent")], path: .recentPhoto)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

