import Foundation

let name = "Abner Lima"

extension String {
    var vowels: [Character] {
        var list: [Character] = []
        
        for character in self {
            switch String(character).lowercased() {
            case "a", "e", "i", "o", "u":
                list.append(character)
            default:
                break
            }
        }
        
        return list
    }
    
    func initials() -> String {
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
}

name.vowels
name.initials()

class Account {
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
}

extension Account {
    convenience init(number: String, balance: Double) {
        self.init(number: number)
        self.balance = balance
    }
}

let account = Account(number: "123456789", balance: 10)
