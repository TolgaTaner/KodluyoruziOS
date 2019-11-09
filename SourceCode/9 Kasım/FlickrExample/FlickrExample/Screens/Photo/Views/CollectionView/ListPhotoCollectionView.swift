//
//  ListPhotoCollectionView.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

final class ListPhotoCollectionView: UICollectionView {

  
    override func awakeFromNib() {
        delegate = self
        dataSource = self
        prefetchDataSource = self
    }

}
// Delegate methods of collection view.
extension ListPhotoCollectionView:UICollectionViewDelegate {
    
}

// Datasource methods of collection view.
extension ListPhotoCollectionView:UICollectionViewDataSource {
    
    //Number of cells each section.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    //Datasource of the current cell.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = dequeueReusableCell(withReuseIdentifier: ListPhotoCollectionViewCell.identifier, for: indexPath) as? ListPhotoCollectionViewCell {
            cell.populate(itemOrder: indexPath.row + 1 )
            return cell
        }
        return UICollectionViewCell()
    }

}

extension ListPhotoCollectionView:UICollectionViewDelegateFlowLayout{
    
    //Size of the current cell.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ListPhotoCollectionViewCell.prefferedSize.width, height: ListPhotoCollectionViewCell.prefferedSize.height)
    }
    
    //Space between each cell.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return ListPhotoCollectionViewCell.spacingEachItem
    }
}

extension ListPhotoCollectionView:UICollectionViewDataSourcePrefetching {
    
    //Prefetchs unvisible cells after fetching all visibles.
    func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath]) {
        
    }
    
}
