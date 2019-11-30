//
//  ViewController.swift
//  VisitorPatternExample
//
//  Created by Tolga Taner on 30.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UIViewController

final class DetailViewController: UIViewController {
    
    @IBOutlet final private weak var productPriceLabel: UILabel!
    @IBOutlet final private weak var productNameLabel: UILabel!
    lazy var product:ProductModel = ProductModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        productPriceLabel.text = product.price
        productNameLabel.text = product.name
    }


}

extension DetailViewController:StoryboardVisitable {
    func accept(datasource: ProductModel, visitor: StoryboardVisitor) {
        visitor.visit(datasource: datasource, self)
    }
    
    
    
    
    
}
