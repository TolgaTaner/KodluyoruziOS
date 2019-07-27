//: [Previous](@previous)

import Foundation


//Defines an empty dictionary.
var emptyDictionary : [String:Int] = [:]

//Another an empty dictionary.
var anotherDictionary : Dictionary<String,Int> = [:]

var namesAndPets = [
    "Tolga": "Cat",
    "Taner" : "Dog"
]

print(namesAndPets)

print(namesAndPets["Tolga"])
print(namesAndPets["Taner"])
print(namesAndPets["Cat"])

print(namesAndPets.isEmpty)
print(namesAndPets.count)


//: [Next](@next)
