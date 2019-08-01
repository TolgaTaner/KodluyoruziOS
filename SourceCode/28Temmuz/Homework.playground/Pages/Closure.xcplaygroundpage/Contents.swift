//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func addTwo(firstNumber:Int, secondNumber:Int) ->Int {
    return firstNumber + secondNumber
}

let addOperation:(Int,Int) -> Int = {
    firstNumber,secondNumber in
    
    print("editor in closure")
    return firstNumber + secondNumber
}

print("editor outside of the closure")
print(addOperation(10,5))
//: [Next](@next)
