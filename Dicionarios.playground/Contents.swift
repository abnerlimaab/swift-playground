var states = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo"
]

var studentGrade: [String: Double] = [:]

states["GO"] = "Goiás"

let myState = states["CE"]

if let state = myState {
    print(state)
}

states["GO"] = nil
print(states)

print(states.count)

let keys = Array(states.keys)
print(keys)

let values = Array(states.values)
print(values)
