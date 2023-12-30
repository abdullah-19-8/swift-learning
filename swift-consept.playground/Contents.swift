let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
//print(square(number: number))

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

if let number = number {
    print(square(number: number))
}

// We can actually write this:
if let number {
    print(square(number: number))
}

// How to unwrap optionals with guard
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value inside")
//}

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife(){
    guard let name = getMeaningOfLife() else{
        return
    }
}

// How to unwrap optionals with nil coalescing

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//print(author)

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


let input = ""
let numbers = Int(input) ?? 0
print(numbers)

// How to handle multiple optionals using optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//How to handle function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

// Checkpoint 9

func returnOneNumber(of number: [Int]?) -> Int{ number?.randomElement() ?? Int.random(in: 1...100) }

returnOneNumber(of: [1,2,3,4,5,6,7,8,9])
returnOneNumber(of: nil)
