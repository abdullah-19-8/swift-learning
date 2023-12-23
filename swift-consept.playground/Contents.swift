import Foundation
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


print(gameOver)

gameOver.toggle()
print(gameOver)


let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// it is bad
let luggageCode = "1" + "2" + "3" + "4" + "5" // 1+2 = 12 -> 12 + 3 = 123 -> 123 + 4 = 1234 -> 1234 + 5 = 12345

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// this is good

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

// this kind of code is not allowed:
//let number = 11
//let missionMessage = "Apollo " + number + " landed on the moon."

//You could ask Swift to treat the number like a string if you wanted, like this:

let missionMessage = "Apollo " + String(number) + " landed on the moon."

//It is still both faster and easier to read to use string interpolation:

let missionMessage2 = "Apollo \(number) landed on the moon."

//Tip: You can put calculations inside string interpolation if you want to. For example, this will print “5 x 5 is 25”:

print("5 x 5 is \(5 * 5)")



let cTemperatures = 25

let fTemperatures = cTemperatures * 9 / 5 + 32

print("Fahrenheit temp is \(fTemperatures) and Celsius temp is \(cTemperatures)")



