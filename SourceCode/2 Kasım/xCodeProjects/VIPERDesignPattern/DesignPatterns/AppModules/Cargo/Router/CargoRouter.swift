//
//  CargoRouter.swift
//  DesignPatterns
//
//  Created by Tolga Taner on 2.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import UIKit

final class CargoRouter : CargoPresenterToRouterProtocol {
    weak var cargoViewController: ViewController?
    
    static func createModule() -> ViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let cargoViewController = storyboard.instantiateInitialViewController() as? ViewController {
            
            let presenter:CargoViewToPresenterProtocol & CargoInteractorToPresenterProtocol = CargoPresenter()
            let interactor:CargoPresenterToInteractorProtocol = CargoInteractor()
            let router:CargoPresenterToRouterProtocol = CargoRouter()
            cargoViewController.presenter = presenter
            presenter.view = cargoViewController
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            router.cargoViewController = cargoViewController
            return cargoViewController
            
        }
        fatalError("Cargo module can not created.")
    }
    
}
