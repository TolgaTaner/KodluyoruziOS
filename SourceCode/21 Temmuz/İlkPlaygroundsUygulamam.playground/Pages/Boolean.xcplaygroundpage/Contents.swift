//: [Previous](@previous)

import Foundation

var yes : Bool = true

var no : Bool = false

//Swift 4.2 -> Operatörün değerini tersine çevir.
yes.toggle()

//Swift <= 4.2 -> Operatörün değerini tersine çevir.
yes = !yes

let isRainy = true

// Eve gidip gitmemin değerini set etmiş olurum.
var shouldIGoToHome :Bool = isRainy ? true : false

// Eve gidip gitmemin değerini set etmiş olurum.
if isRainy {
    shouldIGoToHome = true
    print("Oh no, it is too early.")
}
else {
    print("Yee, it is party time.")
    shouldIGoToHome = false
}
//: [Next](@next)

