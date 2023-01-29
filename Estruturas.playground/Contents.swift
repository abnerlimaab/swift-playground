struct Person {
    var name: String
    var age: Int
    
    func sayHello() {
        print("Hello!")
    }
    
    mutating func incrementAge() {
        age += 1
    }
    
    func sayYourAge() {
        print("My age is \(age)")
    }
}

var person = Person(name: "Abner", age: 25)
person.sayHello()
person.sayYourAge()
person.incrementAge()
person.sayYourAge()
 
struct Temperature { 
    var celsius: Double
    var farenheit: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
print(temperature.farenheit)
