func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}
 
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

calculate(10, 20, operation: sum)
 
calculate(10, 20, operation: {(a: Int, b: Int) -> Int in return a + b})

calculate(10, 20, operation: {a, b in return a + b})

calculate(10, 20, operation: {return $0 + $1})

calculate(10, 20, operation: {$0 + $1})

calculate(10, 20, operation: +)

calculate(10, 20) {$0 + $1}
 
import Foundation

let names = [
    "   Abner   ",
    "Souda    ",
    "   Lima"
]

let correctNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctNames)

let uppercasedNames = correctNames.map({$0.uppercased()})
print(uppercasedNames)

let filteredNames = correctNames.filter({$0.count <= 4})
print(filteredNames)

let fullName = correctNames.reduce("", {$0 + "\($1) "})
print(fullName)
