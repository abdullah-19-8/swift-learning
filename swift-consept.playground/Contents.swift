let sayHello = {(name: String) -> String in
    "Hi \(name)!"
}

sayHello("rest")

func greetUser(){
    print("Hi There!")
}

var greetCopy: ()-> Void = greetUser


func getUserData(for id: Int) -> String{
    if id == 1989{
        return "Taylor Swift"
    }else{
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["gloria","Suzanne", "Piper","Tiffany","Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1:String,name2:String)-> Bool{
    if name1 == "Suzanne"{
        return true
    }else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}

//let captainFirstName = team.sorted(by: captainFirstSorted)
//print(captainFirstName)
let captainFirstTeam = team.sorted(by: {(name1:String, name2:String) -> Bool in
    if name1 == "Suzanne"{
        return true
    }else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)

print("---------------------------------------------------------------")

// How to use trailing closure and shorthand syntax

let captainFirstTeamm = team.sorted { name1, name2  in
    if name1 == "Suzanne"{
        return true
    }else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}

let captainFirstTeammm = team.sorted{
    if $0 == "Suzanne"{
        return true
    } else if $1 == "Suzanne"{
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

print("---------------------------------------------------------------")

// How to accept functions as parameters

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

print("--------------------------------------------------")

// Checkpoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
var even = [Int]()

let result = luckyNumbers.filter {!$0.isMultiple(of: 2)}.sorted{ $1 > $0}.map{ "\($0) is a lucky number " }.joined(separator:"\n")
print(result)

