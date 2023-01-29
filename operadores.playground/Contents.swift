import UIKit

var (name, age) = ("Abner", 25)

print(name)
print(age)

let age1 = 18
let age2 = 20

let sum = age1 + age2
let minus = age2 - age1
let multiply = age1 * age2
let division = age1 / age2
let moduls = age2 % age1

var products = 125
var lastBuy = 25
products -= lastBuy

let grade = 8.9
let minimumGrade = 7.0
let isApproved = grade > minimumGrade
let gradeResult = (grade > minimumGrade) ? "Aprovado" : "Reprovado "

let teacherName = "Abner"
let studentName = "abner"
let sameNames = teacherName.lowercased() == studentName.lowercased()
let diferentNames = teacherName != studentName

var boughtBanana = true
var boughtTomato = true
var boughtApple = false

var isHappy = boughtBanana && boughtTomato && boughtApple
