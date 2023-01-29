var names = ["Fulano", "Siclano", "Beltrano"]

var lotteryNumbers: [Int] = []

var guests = ["João", "Paula", "Alexandre"]

print(guests.count)

print(guests.isEmpty)

var secondGuest = guests[1]

guests[0] = "Henrique"

guests[0...1] = ["Eric", "Roberto", "Joana"]

print(guests)

if let first = guests.first {
    print(first)
}

if let last = guests.last {
    print(last)
}

guests += ["Maria", "Abner"]

guests.append("Rubens")

guests.insert("Romildo", at: 2)

guests.removeFirst()

guests.removeLast()

if guests.contains("Abner") {
    print("O Abner foi convidado")
}
