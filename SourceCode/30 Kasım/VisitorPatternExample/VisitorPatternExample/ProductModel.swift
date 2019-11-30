//
//  ProductModel.swift
//  VisitorPatternExample
//
//  Created by Tolga Taner on 30.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


struct ProductModel {
    
    let name:String
    let price:String
    
    init(name:String, price:String) {
        self.name = name
        self.price = price
    }
    init() {
        name = ""
        price = ""
    }
}
