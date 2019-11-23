//
//  ListPhotoCollectionViewCell.swift
//  FlickrExample
//
//  Created by Tolga Taner on 9.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

final class ListPhotoCollectionViewCell: UICollectionViewCell {
    
    private var itemOrder:Int?{
        didSet{
            if let itemOrder = itemOrder {
                itemNumberLabel.text = String(itemOrder)
            }
        }
    }
    
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
    
    func populate(itemOrder:Int) {
        backgroundColor = .red
        self.itemOrder = itemOrder
    }
    
    
    
    override func awakeFromNib() {
        roundedView.layer.cornerRadius = roundedView.frame.size.height/2
        roundedView.layer.masksToBounds = true
    }
    
    override func prepareForReuse() {

    }
    
    
    
    
}
