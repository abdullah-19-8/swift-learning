import Foundation

var greeting = "Hello, playground"
greeting = "Hello, Abdullah"

let character = "Asma"
//character = "Abdullah" it can not be changed

var playerName = "Abdullah"
print(playerName)

playerName = "Ahmed"
print(playerName)

playerName = "ShekhMohamed"
print(playerName)

let movie = """
by using 3 quotes you can
write as many line
as you want
"""
// read without ()
print(movie.count)
// write with ()
print(movie.uppercased())

let score = 10
let reallyBig = 100000000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter = counter + 5
counter += 5
print(counter)

counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

let numbers = 120
print(numbers.isMultiple(of: 3))
print(120.isMultiple(of: 3))

let number = 0.1 + 0.2
print(number)

let a = 1
let b = 2.0
//let c = a + b     Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
let c = a + Int(b)
// let c = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var rating = 5.0
rating *= 2

