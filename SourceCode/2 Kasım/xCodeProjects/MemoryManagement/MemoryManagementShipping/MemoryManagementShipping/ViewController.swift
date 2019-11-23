//
//  ViewController.swift
//  MemoryManagementShipping
//
//  Created by Tolga Taner on 2.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ship = ShipModel()
        let cargo = CargoModel()
        
        ship.cargo = cargo
        cargo.ship = ship
    }


}
class ShipModel {
    var cargo:CargoModel?
}

class CargoModel {
     var ship:ShipModel?
}

