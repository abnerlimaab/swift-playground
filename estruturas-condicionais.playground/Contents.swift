import UIKit

var greeting = "Hello, playground"

let hasHeadache = false
var humor = ""

if hasHeadache {
    humor = "Muito p... da vida"
} else {
    humor = "Felizão"
}
 
let letter = "i"
var letterType: String

switch letter {
case "a", "e", "i", "o", "u":
    letterType = " vogal"
default:
    letterType = "consoante"
}

let speed = 95

switch speed {
case 0 ..< 20:
    print("Primeira marcha")ß
case 20 ..< 40:
    print("Segunda marcha")
case 40 ..< 50:
    print("Terceira marcha")
case 50 ..< 90:
    print("Quarta marcha")
default:
    print("Quinta marcha")
}
 
// Closed range
let range0_10 = 0 ... 10

// Half-closed range
let range0_9 = 0 ..< 10

let firstLetter = "a"

switch firstLetter {
case "a"..."f":
    print("Primeiro trimeste")
case "g"..."l":
    print("Segundo trimestre")
case "m"..."r":
    print("Terceriro trimestre")
default:
    print("Quarto trimestre")
}
