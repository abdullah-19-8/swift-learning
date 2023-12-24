
//let surname = "Lasso"
//var score = 0

let surname : String = "Lasso"
var scores : Int = 0
var score : Double = 0

//String holds text:
let playerName: String = "Roy"

//Int holds whole numbers:
var luckyNumber: Int = 13

//Double holds decimal numbers:
let pi: Double = 3.141

//Bool holds either true or false:
var isAuthenticated: Bool = true

//Array holds lots of different values, all in the order you add them. This must be specialized, such as [String]:
var album : [String] = ["Abdullah", "Asma","Test"]

//Dictionary holds lots of different values, where you get to decide how data should be accessed. This must be specialized, such as [String: Int]:
var user: [String: String] = ["id": "@twostraws"]

//Set holds lots of different values, but stores them in an order that’s optimized for checking what it contains. This must be specialized, such as Set<String>:
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

var teams: [String] = [String]()

var cities: [String] = []

var clues = [String]()


print("---------------------------------------------")

// Checkpoint 2

let names = ["Abdullah","Asma","test","Asma"]

let uniqueNames = Set(names)

print(names.count, uniqueNames.count)

