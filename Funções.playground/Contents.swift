func sayHello() {
    print("Hello!")
}

sayHello()

func say(message: String, to: String) -> String {
    return "\(message) to: \(to)"
}

let setence = say(message: "Hello!", to: "Abner")
print(setence)

func multiply(_ num1: Int, by num2: Int) -> Int {
    return num1 * num2
}

multiply(10, by: 20)
 
func sum(_ initialValue: Int, withValues values: Int...) -> Int {
    var result = initialValue
    for value in values {
        result += value
    }
    
    return result
}

print(sum(10, withValues: 20, 30, 50))

