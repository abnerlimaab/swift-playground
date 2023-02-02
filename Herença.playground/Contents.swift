class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emiteSound() {
        print("...")
    }
}

class Dog: Animal {
    override func emiteSound() {
        print("Au au au")
    }
    
    func run() {
        print("O cachorro está voando")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    // Designated Initializer
    // - Deve chamar outro designated da sua classe mãe
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    // Convenience Initializer
    // - Deve chamar outro initialize da mesma classe
    // - Deve chamar no final um designated initialize
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("🎶🎶🎶")
    }
    
    func fly() {
        if canFly {
            print("O passário está voando")
        } else {
            print("Este pássaro não voa")
        }
    }
}

class Duck: Bird {
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
}

let billy = Dog(color: "preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "preto", breed: "Sabiá")
let donald = Duck(color: "branco", gender: "M", breed: "disney")

billy.emiteSound()
zeCarioca.emiteSound()
donald.emiteSound()

billy.run()
zeCarioca.fly()
maleBird.fly()

let animals: [Animal] = [
    billy,
    zeCarioca,
    maleBird,
    donald
]

// type casting
for animal in animals {
    animal.emiteSound()
    
    if animal is Dog {
        (animal as! Dog).run()
    }
    
    if let duck  = animal as? Duck {
        duck.fly()
    }
    
    switch animal {
    case let dog as Dog:
        dog.run()
    case let bird as Bird:
        bird.fly()
    default:
        break
    }
}
