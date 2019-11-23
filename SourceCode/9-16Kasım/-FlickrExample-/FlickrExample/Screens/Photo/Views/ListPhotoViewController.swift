//
//  ViewController.swift
//  FlickrExample
//
//  Created by Tolga Taner on 8.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

final class ListPhotoViewController: UIViewController {

    @IBOutlet fileprivate final weak var listPhotoCollectionView: ListPhotoCollectionView!
    
    private let photoService:RequestHelper = RequestHelper(queryType: .recentPhoto, path: .recentPhoto)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoService.datasource = self
        photoService.getPhotoList()
        
    }

}

extension ListPhotoViewController: ResponseDataSource {
    func photoListSuccess(_ photoList: [PhotoModel]) {
        listPhotoCollectionView.photoList = photoList
    }
    
    func photoListFailure(_ error: ErrorModel) {
        #warning("show alert")
    }
    
    
}

