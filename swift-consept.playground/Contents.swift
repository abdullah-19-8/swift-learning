class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// How to make one class inherit from another

class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
    
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

// How to add initializers for classes

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// How to create a deinitializer for a class

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// How to work with variables inside classes

class Users {
    var name = "Paul"
}

var user = Users()
user.name = "Taylor"
user = Users()
print(user.name)

// Checkpoint 7

class Animal{
    let leg: Int
    
    init(leg: Int) {
        self.leg = leg
    }
    
}

class Dog: Animal{
    func speak(){
        print("wow")
    }
}

class Cat: Animal{
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(leg: 4)
    }
    func speak(){
        print("meow")
    }
}

class Corgi: Dog{
    override func speak() {
        print("7apa 7ap")
    }
}

class Poodle: Dog{
    override func speak() {
        print("chgha")
    }
}

class Persian: Cat{
    override func speak() {
        print("meow 2")
    }
}

class Lion: Cat{
    override func speak() {
        print("meow 3")
    }
}

