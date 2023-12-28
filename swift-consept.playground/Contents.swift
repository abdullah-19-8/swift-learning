import Foundation

struct Car: Vehicles {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicles) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

struct Bicycle: Vehicles {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

protocol Vehicles {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

func getTravelEstimates(using vehicles: [Vehicles], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

//
//struct Book {
//    var name: String
//}
//
//func buy(_ book: Book) {
//    print("I'm buying \(book.name)")
//}

protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Cars: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

// How to use opaque return types

//func getRandomNumber() -> Int {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Bool {
//    Bool.random()
//}

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

// extensions

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim(){
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()

print(trimmed)
print(trimmed2)

quote.trim()


let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Books {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Books{
    init(title: String, pageCount: Int) {
            self.title = title
            self.pageCount = pageCount
            self.readingHours = pageCount / 50
        }
}

let lotr = Books(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

// How to create and use protocol extensions

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool{
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}


protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

print(allEven)
print(allEven2)
print(allEven3)


// checkpoint 8

protocol Building{
    var roomNumbers: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func summary()
}

extension Building {
    func summary() {
        print("Room numbers: \(roomNumbers) Cost: \(cost) Agent: \(agent)")
    }
}

struct House: Building{
    var roomNumbers: Int
    
    var cost: Int
    
    var agent: String
    
    
}

let house = House(roomNumbers: 3, cost: 500, agent: "Abdullah")

house.summary()

struct Office: Building{
    var roomNumbers: Int
    
    var cost: Int
    
    var agent: String
    
    
}
