//
//  UICollectionViewCellExtension.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UICollectionViewCell

extension UICollectionViewCell {
    
    class var identifier:String {
        return String(describing: self)
    }
}
