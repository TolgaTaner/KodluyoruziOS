//
//  UILabelExtension.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UILabel


extension UILabel {
    
    static func removeAllText(_ labels:UILabel...) {
        labels.forEach {
            $0.text?.removeAll()
        }
    }
}
