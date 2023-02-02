class Person {
    var name: String
    var gender: Character
    var age: Int = 0
    
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    
    func speak(sentence: String) {
        if age < 3 {
            print("gugu dada")
        } else {
            print(sentence)
        }
    }
    
    func introduce() {
        speak(sentence: "Olá! Meu nome é \(name)")
    }
}

class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

let joao = Person(name: "João", gender: "M")
let clara = Person(name: "Clara", gender: "F")

joao.age = 24
clara.age = 1

joao.introduce()
clara.introduce()

class Vehicle {
    var speed: Double = 0 {
        didSet {
            speed = min(speed, maxSpeed)
        }
    }
    var model: String
    static let speedUnit: String = "Km/h"
    
    var maxSpeed: Double {
        return 250
    }
    
    var speedInMilesPerHour: Double {
        get {
            return speed / 1.60934
        }
        set {
            speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    func descript() -> String {
        return "Veículo: \(model), velocidade atual: \(speed)"
    }
    
    class func alert() -> String {
        return "Se beber, nã dirija!"
    }
}

print(Vehicle.alert())
print(Vehicle.speedUnit)

let car = Vehicle(model: "City")
car.speed = 500
print(car.speed)
