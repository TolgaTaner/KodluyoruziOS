//: [Previous](@previous)

import Foundation

struct UserModel {
    
    //User'ın ismi.
    var name:String
    //User'ın soyismi.
    var surname:String
    //User'ın göbek ismi.
    var middleName:String?
    
    //Computed Property
    
    //User'ın full ismi.
    var fullName:String {
        return name + surname
    }
    
    //Init.
    init(name:String,surname:String) {
        self.name = name
        self.surname = surname
    }
}


//Tolga isimli bir instance yarattım.
var tolga : UserModel = UserModel(name:"Tolga",surname:"Taner")
var hazal : UserModel = UserModel(name:"Hazal",surname:"Eroğlu")
var irem : UserModel = UserModel(name:"İrem",surname:"Baycan")



struct LocationModel {
    
    let x:Double
    let y:Double
    let owner:UserModel
    
    init(x:Double,y:Double,owner:UserModel) {
        self.x = x
        self.y = y
        self.owner = owner
    }
    
    func calculateDistance(_ location:LocationModel) -> Double {
        let result = abs(self.x - location.x) + abs(self.y - location.y)
        return result
    }

}
let currentLocation :LocationModel = LocationModel(x:34.234,y:35.250,owner:tolga)


let myFriendLocation : LocationModel = LocationModel(x:36.234, y:36.250,owner:hazal)

let anotherFriendLocation:LocationModel = LocationModel(x:36.500,y:36.250,owner:irem)

let distance = currentLocation.calculateDistance(myFriendLocation)
print(distance)

let anotherDistance = currentLocation.calculateDistance(anotherFriendLocation)

print(anotherDistance)





























//: [Next](@next)
