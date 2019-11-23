//
//  ListPhotoCollectionViewCell.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit
import Kingfisher

final class ListPhotoCollectionViewCell: UICollectionViewCell {
    
    private var itemOrder:Int?{
        didSet{
            if let itemOrder = itemOrder {
                itemNumberLabel.text = String(itemOrder)
            }
        }
    }
    
    private var photo:PhotoModel?{
        didSet{
            if let item = photo {
                guard let resource = URL(string: item.imageUrl) else {return}
                photoImageView.kf.setImage(with: resource)
            }
        }
    }
    
    @IBOutlet final private weak var photoImageView: UIImageView!
    @IBOutlet final private weak var itemNumberLabel: UILabel!
    @IBOutlet final private weak var roundedView: UIView!
    
    static var prefferedSize:CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
    static var spacingEachItem:CGFloat {
        return 10
    }
    
    static var identifier:String {
        return String(describing: self)
    }
    
    func populate(itemOrder:Int,_ item:PhotoModel) {
        self.photo = item
        self.itemOrder = itemOrder
    }
    
    
    
    override func awakeFromNib() {
        roundedView.layer.cornerRadius = roundedView.frame.size.height/2
        roundedView.layer.masksToBounds = true
    }
    
    override func prepareForReuse() {

    }
    
    
    
    
}
