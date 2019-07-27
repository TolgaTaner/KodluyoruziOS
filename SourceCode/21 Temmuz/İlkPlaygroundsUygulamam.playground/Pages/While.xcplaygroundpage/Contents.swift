//: [Previous](@previous)

import Foundation


var sum = 0
let count = 10

let closedRange : ClosedRange<Int> = 0...count

//print(closedRange)


let halfOpenRange = 1..<count

//print(halfOpenRange)
//print(halfOpenRange.lowerBound)
//print(halfOpenRange.upperBound)

// For in loop.
//for i in halfOpenRange {
//    print(i)
//}

//// For loop.
//for j in 1...count{
//    print(j)
//}
//for t in 1...count where count>3 {
//    print("Hello")
//}




var number = 1

while number < 10 {
    number += 1
    print(number)
}






//: [Next](@next)
