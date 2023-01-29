enum CompassPoint {
    case north
    case east
    case west
    case south
}

var direction = CompassPoint.north

var direction2: CompassPoint = .north

direction = .south

enum SeatPosition: String {
    case aisle = "corredor", middle = "meio", window = "janela"
}

var passengerSeat = SeatPosition.window

switch passengerSeat {
case .aisle:
    print("O passageiro sentou no corredor")
case .middle:
    print("O passageiro sentou no meio")
case .window:
    print("O passageiro sentou na janela")
}
 
print(passengerSeat)

enum Month: Int {
case january = 0, february, march
}

print(Month.march.rawValue)
 
enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .age(25)

switch measure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("A sua idade é \(age)")
case .size(let width, let height):
    print("Voce tem \(width) de largura e \(height) de altura.")
}
 
