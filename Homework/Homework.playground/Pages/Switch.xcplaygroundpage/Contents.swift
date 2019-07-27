//: [Previous](@previous)

import Foundation


//MARK:TODO Switch

//Write a switch statement that takes an age as an integer and assigns the life stage related to that age, to a String. You can make up the life stages, or use our categorization as follows:
//
//0-2 years: Infant
//3-12 years: Child
//13-19 years: Teenager
//20-39: Adult
//40-60: Middle aged
//61+: Elderly


// TODO: Write solution here

let lifeStage: String
var age :Int = 35
switch age {
case ..<0:
    lifeStage = "Not born yet"
case 0...2:
    lifeStage = "Infant"
case 3...12:
    lifeStage = "Child"
case 13...19:
    lifeStage = "Teenager"
case 20...39:
    lifeStage = "Adult"
case 40...60:
    lifeStage = "Middle aged"
case 61...:
    lifeStage = "Elderly"
case let age:
    fatalError("Unaccounted for age: \(age)")
}




//Write a switch statement that takes a tuple containing a String and an Int.  The String is a name, and the Int is an age. Use the same cases that you used above, and binding with let syntax, to assign the the name, followed by the life stage, to a String constant. For example, for the author of these challenges, you'd assign "Matt is an adult." to your constant.




// TODO: Write solution here



let lifeStageForName: String
var name :String = "Tolga"
switch (name, 35) {
case ("Tolga", ..<0):
    lifeStageForName = "\(name) has not been born yet."
case ("Tolga", 0...2):
    lifeStageForName = "\(name) is an infant."
case ("Tolga", 3...12):
    lifeStageForName = "\(name) is a child."
case ("Tolga", 13...19):
    lifeStageForName = "\(name) is a teenager."
case ("Tolga", 20...39):
    lifeStageForName = "\(name) is an adult."
case ("Tolga", 40...60):
    lifeStageForName = "\(name) is middle aged."
case ("Tolga", 61...):
    lifeStageForName = "\(name) is elderly."
default:
    lifeStageForName = "\(name) is unknown."
}
//: [Next](@next)
