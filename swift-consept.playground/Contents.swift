//func printTimesTables(for number: Int, end: Int) {
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(for: 5, end: 20)

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

print("---------------------------------------------------")

// How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345"{
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
           return "OK"
       } else if password.count < 10 {
           return "Good"
       } else {
           return "Excellent"
       }
}
do {
    let result = try checkPassword("1234")
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

do {
    let result = try checkPassword("12345")
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

do {
    let result = try checkPassword("1234567")
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
do {
    let result = try checkPassword("123456789")
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
do {
    let result = try checkPassword("1234567890")
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

// Checkpoint 4

enum NumberError : Error{
    case lessOrGreaterThan, noSqrt
}

func squerRoot(of number: Int) throws -> Int{
    if number < 1 || number > 10000{
        throw NumberError.lessOrGreaterThan
    }
    for num in 1...number {
        if(num * num == number){
            return num
        }
    }
    throw NumberError.noSqrt
}

let number = 10000

do{

    let result = try squerRoot(of: number)
    print(result)

} catch NumberError.lessOrGreaterThan {
    print("number should be in range 1 to 1000")
} catch NumberError.noSqrt{
    print("this number has no sqrt")
} catch{
    print("there are an error")
}
