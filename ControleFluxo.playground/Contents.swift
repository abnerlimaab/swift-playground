for day in 1...30 {
    print("Estou no dia \(day)")
}

for _ in 1...5 {
    print("Dedique-se")
}

let name = "Abner"

for letter in name {
    print(letter)
}
 
for (index, letter) in name.enumerated() {
    print(index, letter)
}

let dictionary = [
    "Abner": 25,
    "Aurelia": 45
]

for (name, age) in dictionary {
    print(name, age)
}
 
var life = 10
while life > 0 {
    print("O jogador está com \(life) vidas")
    life = life - 1
}

import Foundation

var megaSenna: [Int] = []

while megaSenna.count < 6 {
    let value = Int(arc4random_uniform(60) + 1)
    
    if !megaSenna.contains(value) {
        megaSenna.append(value)
    }
}

print(megaSenna)
 
var tries = 0
var diceNumber = 0

repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6) + 1)
} while diceNumber != 6

print("Você tirou 6 na tentativa \(tries)")
 
