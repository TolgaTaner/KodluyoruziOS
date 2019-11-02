import UIKit

//class CargoModel {
//
//    var ship:ShipModel?
//}
//
//class ShipModel {
//    var cargo:CargoModel?
//}
//
//let cargo = CargoModel()
//
//let ship = ShipModel()
//ship.cargo = cargo

//
//
//let ship = Ship()
//let cargo = Cargo()
//
//ship.cargo = cargo
//cargo.ship = ship


 class CargoModel {
 }
 class ShipModel {
 var cargo:CargoModel?
 var unloadObservation: (() -> Void) = {}
 
 func loadNextCargo()->CargoModel {
    return CargoModel()
 }
    
    func load(){
        let cargo = CargoModel()
        self.cargo = cargo
        self.unloadObservation = { [weak self] in
            self?.cargo = self?.loadNextCargo()
        }
    }
    
 }



