import UIKit


// Protocol Oriented Programming.

protocol Flyable {
    func fly()
}

protocol Huntable {
    func eat()
}

protocol Bird {
    var hasTwoEyes:Bool { get set }
}

struct Penguin : Bird, Huntable {
    var hasTwoEyes: Bool

    func eat() {

    }

}

//


// Bir class birden fazla kalıtım alamaz.
//Object Oriented Programming

//class Animal {
//
//}
//
//class Bird {
//
//}
//
//class Penguin:Bird,Animal {
//
//}


