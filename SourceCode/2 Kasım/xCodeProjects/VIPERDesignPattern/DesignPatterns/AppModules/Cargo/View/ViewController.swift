//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Tolga Taner on 2.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter:CargoViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.startFetchingCargo()
    }


}

extension ViewController: CargoPresenterToViewProtocol {
    func showFetchingCargoSuccess(_ cargo:CargoModel) {
        print("Cargo name is",cargo.name)
    }
    
    
}
