typealias Op = (Int, Int) -> Int

enum Operation {
    case sum, sub, multiply, divide
}

func sum (_ a: Int, and b: Int) -> Int {
    return a + b
}

func sub (_ a: Int, less b: Int) -> Int {
    return a - b
}

func multiply (_ a: Int, by b: Int) -> Int {
    return a * b
}

func divide (_ a: Int, by b: Int) -> Int {
    return a / b
}

func applyOperation (_ a: Int, _ b: Int, operation: Op) -> Int {
    return operation(a, b)
}

func getOperation (_ op: Operation) -> Op {
    switch op {
        case .sum: return sum
        case .sub: return sub
        case .divide: return divide
        case .multiply: return multiply
    }
}

print(sum(10, and: 10))
print(sub(25, less: 15))
print(multiply(10, by: 5))
print(divide(50, by: 10))

print(applyOperation(10, 10, operation: sum))
print(applyOperation(25, 15, operation: sub))
print(applyOperation(10, 5, operation: multiply))
print(applyOperation(50, 10, operation: divide))

let operation = getOperation(Operation.sum)

print(operation(10, 20))
