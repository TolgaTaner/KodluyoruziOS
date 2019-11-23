//
//  OrderDetailViewController.swift
//  OrderAppExample
//
//  Created by Tolga Taner on 23.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit.UIViewController

final class OrderDetailViewController: UIViewController {
    
    lazy var order:ActiveOrderModel = ActiveOrderModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
  
    @IBAction private func closeButtonWasTapped(_ sender: Any) {
        
        NotificationCenter.default.post(.init(name: .orderListChanged))
        dismiss(animated: true, completion: nil)
    }
    
}
