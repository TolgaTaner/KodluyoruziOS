
import Foundation

var str = "Hello, playground"

class ActorModel {
    
    
    let name:String
    var filmography:[String]
    
    init(name:String, filmography:[String]) {
        self.name = name
        self.filmography = filmography
    }
    
    func insertFilm(_ filmName:String) {
        filmography.append(filmName)
    }
    
}

var zoeSaldana : ActorModel = ActorModel(name:"Zoe Saldana",filmography:["Guardians of the Galaxy"])



zoeSaldana.insertFilm("Avatar")

var tolgaTaner = ActorModel(name:"Tolga",filmography:[])

tolgaTaner.filmography = zoeSaldana.filmography

    
print("Zoe:",zoeSaldana.filmography)
print("Tolga:",tolgaTaner.filmography)

tolgaTaner.insertFilm("Star Trek")

print("Zoe:",zoeSaldana.filmography)

let hazalEroglu = zoeSaldana

hazalEroglu.insertFilm("Inception")
print("Hazal:",hazalEroglu.filmography)
print("Zoe:",zoeSaldana.filmography)



//: [Next](@next)
