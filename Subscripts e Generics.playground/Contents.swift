class Car {
    var licencePlate: String
    
    subscript(index: Int) -> String {
        get {
            let character = Array(licencePlate)[index]
            return String(character)
        }
        set {
            var array = Array(licencePlate)
            array[index] = Character(newValue)
            licencePlate = String(array)
        }
    }
    
    init(licencePlate: String) {
        self.licencePlate = licencePlate
    }
}

var car = Car(licencePlate: "EXP-8722")
car[0] = "A"
print(car.licencePlate)

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var a = 1
var b = 2

swapValues(&a, &b)

print(a)
print(b)
