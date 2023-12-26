import Foundation

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func test(text: String){
    print(text)
}

test(text: "test")

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2:String) -> Bool{
     string1.sorted() == string2.sorted()
}

areLettersIdentical(string1: "abc", string2: "cab")
areLettersIdentical(string1: "test", string2: "Rest")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

print("--------------------------------------------------")

// How to return multiple values from functions

//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}


//let user = getUser()
//print("Name: \(user[0]) \(user[1])")


//func getUser() -> [String: String] {
//    [
//        "firstName": "Taylor",
//        "lastName": "Swift"
//    ]
//}
//
//let user = getUser()
//print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")

//func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Taylor", lastName: "Swift")
//}

func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
print("Name: \(user.0) \(user.1)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

print("--------------------------------------------------")

// How to customize parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

print(rolls)

//func isUppercase(string: String) -> Bool {
//    string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let resultt = isUppercase(string: string)

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let resultt = isUppercase(string)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
