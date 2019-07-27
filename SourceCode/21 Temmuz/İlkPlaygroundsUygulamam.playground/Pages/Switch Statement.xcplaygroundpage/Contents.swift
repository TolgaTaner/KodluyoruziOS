//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let number : Int = 10
var numberDescription : String = ""

switch number {
case 0:
    numberDescription = "0"
    
case 1...9:
    numberDescription = "1-9"
default:
    numberDescription = "9'dan büyüktür."
}

print(numberDescription)
//: [Next](@next)

