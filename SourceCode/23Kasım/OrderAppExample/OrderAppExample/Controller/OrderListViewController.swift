//
//  ViewController.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UIViewController

final class OrderListViewController: UIViewController {

    @IBOutlet final private weak var orderListCollectionView: OrderListCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderListCollectionView.actionDelegate = self
        orderListCollectionView.list = OrderModel.getOrderList()
        NotificationCenter.default.addObserver(self, selector: #selector(orderListChanged), name:.orderListChanged, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    @objc func orderListChanged() {
        print("Order List Changed, get new list.")
    }
}

extension OrderListViewController: OrderListCollectionViewDelegate {
    
    func didSelected(_ order: ActiveOrderModel) {
        let storyboard = self.storyboard
        if let orderDetailVC = storyboard?.instantiateViewController(withIdentifier: "OrderDetailViewController") as? OrderDetailViewController {
            orderDetailVC.order = order 
            present(orderDetailVC, animated: true, completion: nil)
        }
    }
}

