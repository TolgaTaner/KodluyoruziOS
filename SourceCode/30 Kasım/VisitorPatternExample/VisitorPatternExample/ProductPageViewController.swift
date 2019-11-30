//
//  ProductPageViewController.swift
//  VisitorPatternExample
//
//  Created by Tolga Taner on 30.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UIPageViewController

final class ProductPageViewController: UIPageViewController {
    
    
    private var visitor: StoryboardVisitor = DefaultStoryboardVisitor()
    lazy private var viewControllerList : [DetailViewController] = {
        let storyboard = self.storyboard
        let firstViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        visitor.visit(datasource: ProductModel(name: "Yılbaşı Ağacı", price: "30TL"), firstViewController)
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        visitor.visit(datasource: ProductModel(name: "Tırnak Makası", price: "10TL"), secondViewController)
        return [firstViewController, secondViewController]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        self.setViewControllers([viewControllerList.first as! DetailViewController], direction: .forward, animated: true, completion: nil)
    }
    
    private func configure(){
        view.backgroundColor = UIColor.white
        viewControllerList.first?.view.backgroundColor = .red
        viewControllerList.last?.view.backgroundColor = .blue
        delegate = self
        dataSource = self
    }
    
}

extension ProductPageViewController:UIPageViewControllerDelegate {
    
}

extension ProductPageViewController:UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = viewControllerList.index(of:viewController as! DetailViewController) else { return nil }
        let beforeIndex = currentIndex - 1
        guard beforeIndex >= 0 else {return nil }

        return viewControllerList[beforeIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = viewControllerList.index(of:viewController as! DetailViewController) else { return nil }
        let afterIndex = currentIndex + 1
        guard afterIndex < viewControllerList.count  else {return nil }
        return viewControllerList[afterIndex]
    }
    
    
    
    
}
