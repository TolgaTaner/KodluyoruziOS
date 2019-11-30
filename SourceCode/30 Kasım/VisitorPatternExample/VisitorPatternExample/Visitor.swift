//
//  Visitor.swift
//  VisitorPatternExample
//
//  Created by Tolga Taner on 30.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation


protocol StoryboardVisitor {
    func visit(datasource:ProductModel, _ vc: DetailViewController)
}

protocol StoryboardVisitable {
    func accept(datasource:ProductModel, visitor: StoryboardVisitor)
}


struct DefaultStoryboardVisitor: StoryboardVisitor {
    
    func visit(datasource:ProductModel,_ vc: DetailViewController) {
        vc.product = datasource
    }
}

