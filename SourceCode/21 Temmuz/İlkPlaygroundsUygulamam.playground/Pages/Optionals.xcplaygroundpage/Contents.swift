//: [Previous](@previous)











import Foundation

//var name:String = "tolga"
//var catName:String = ""
//var hasCat : Bool = false

var name :String = "tolga"

//Tolga'nın kedisi olup olmadığını bilmiyorum..
var hasCat :Bool? = false


// Optional bir değeri unwrap ettik.
if let benimkedimvarmı = hasCat {
    print("Tolga'nın kedisi var.")
    print(benimkedimvarmı)
}
else {
    print("Tolga'nın kedisi yoktur.")
}


// Tolga'nın ödevi bunu öğrenip açıkla.


func testGuard(){
    guard let guardUnwrapped = hasCat
        else{return}
}



print("Tolga'nın kedisi var.")


// Tolga'nın kesin olarak köpeği yok.
var hasDog : Bool! = false

// Tolga bir Macbook'a sahip.
var hasMacbook : Bool = true

hasCat = nil


//: [Next](@next)
