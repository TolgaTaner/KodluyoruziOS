import UIKit

var str = "Hello, playground"


// Bir metot tanımla tanımladığın metot tek bir array'i parametre olarak alacak. array'in elemanları 3'ten büyükse bu array'i return et.

var listOfInt : [Int] = [1,2,3,4,5]

func greaterThanThree(list:[Int]) -> [Int] {
    var newList : [Int] = []
    
    for item in list {
        if item > 3 {
            newList.append(item)
        }
    }
    return newList
}

greaterThanThree(list: listOfInt)

var newList = listOfInt.filter {$0 > 3}



func sumOfAllElement(list:[Int])-> Int {
    var sum : Int = 0
    for item in list {
        sum += item
    }
    return sum
}

var sumOfArrayElement = listOfInt.reduce(0,{$0 + $1})

var sumOfListOfElement = listOfInt.reduce(0,+)

print(sumOfArrayElement)

print(sumOfListOfElement)

var multiplyEachElement = listOfInt.map { (value:Int) -> Int in
    return value * 2
}

print(multiplyEachElement)


func multiplyListOfItem(_ list:[Int]) -> [Int] {
    var newList : [Int] = []
    for item in list {
        let newItem = item * 2
        newList.append(newItem)
    }
    return newList
}

multiplyListOfItem(listOfInt)

var unsortedList = [4,5,6,1,3]

let sortedList = unsortedList.sorted()

unsortedList.sort()


















