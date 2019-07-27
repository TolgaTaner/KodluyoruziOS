//: [Previous](@previous)

import Foundation

enum Month : String {
    case January  = "Ocak"
    case February  = "Şubat"
}

//Şu anki ayı tanımladım.
let currentMonth = Month.January

//Bir sonraki ayı tanımladım.
let nextMonth : Month = .February

//Bir sonraki ayın değerini ekranda gösterdim.
print(nextMonth.rawValue)


print(currentMonth)
print(nextMonth)

enum Semester {
    case fall
    case spring
    case summer
}

let currentSemester = Semester.fall
//: [Next](@next)
