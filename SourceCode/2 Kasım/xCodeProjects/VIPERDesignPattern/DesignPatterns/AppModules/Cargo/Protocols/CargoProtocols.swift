//
//  CargoProtocols.swift
//  DesignPatterns
//
//  Created by Tolga Taner on 2.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation

protocol CargoViewToPresenterProtocol:class {
    var view:CargoPresenterToViewProtocol? { get set }
    var interactor:CargoPresenterToInteractorProtocol? { get set }
    var router:CargoPresenterToRouterProtocol?{ get set }
    
    func startFetchingCargo()
}

protocol CargoPresenterToViewProtocol:class {
    func showFetchingCargoSuccess(_ cargo:CargoModel)
}

protocol CargoPresenterToRouterProtocol:class {
    var cargoViewController: ViewController? { get set }
}

protocol CargoPresenterToInteractorProtocol:class {
    var presenter:CargoInteractorToPresenterProtocol? { get set }
    
    func fetchingCargoWillStart()
    
}

protocol CargoInteractorToPresenterProtocol :class {
    
    func fetchingCargoWasSuccess(_ cargo:CargoModel)
    
}

