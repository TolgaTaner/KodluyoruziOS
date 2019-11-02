//
//  CargoPresenter.swift
//  DesignPatterns
//
//  Created by Tolga Taner on 2.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation
class CargoPresenter {
    
    var view:CargoPresenterToViewProtocol?
    var interactor:CargoPresenterToInteractorProtocol?
    var router:CargoPresenterToRouterProtocol?
    
}

extension CargoPresenter:CargoInteractorToPresenterProtocol {
    func fetchingCargoWasSuccess(_ cargo:CargoModel) {
        print("Cargo will show.")
        view?.showFetchingCargoSuccess(cargo)
    }
    
    
}

extension CargoPresenter:CargoViewToPresenterProtocol {
    func startFetchingCargo() {
        print("Fetching cargo will start.")
        interactor?.fetchingCargoWillStart()
    }
    
    
}
