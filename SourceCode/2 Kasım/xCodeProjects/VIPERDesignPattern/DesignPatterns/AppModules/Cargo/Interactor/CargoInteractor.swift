//
//  CargoInteractor.swift
//  DesignPatterns
//
//  Created by Tolga Taner on 2.11.2019.
//  Copyright © 2019 Tolga Taner. All rights reserved.
//

import Foundation
final class CargoInteractor {
    
    weak var presenter:CargoInteractorToPresenterProtocol?
    
    fileprivate func getCargo() {
        let cargo :CargoModel = CargoModel(name: "Pilates topu")
        presenter?.fetchingCargoWasSuccess(cargo)
    }
}

extension CargoInteractor:CargoPresenterToInteractorProtocol {
    func fetchingCargoWillStart() {
        print("Fetching cargo started.")
        getCargo()
    }
    
    
}
