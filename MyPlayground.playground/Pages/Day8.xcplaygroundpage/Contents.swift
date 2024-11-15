//: [Previous](@previous)

// Day 8

import Foundation

// you can set default parameters for functions
func printTimesTables(for number: Int, end: Int = 12) { // Int = 12 specifies default end value
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 4) // default prints up to 12
printTimesTables(for: 2, end: 4) // customize end value to 4

var characters = ["Priscilla", "Harish", "Bipul", "Kamran", "Rohan"]

print(characters.count)

// example of built in default parameters - if we know we are going to add a lot of items
// then no need to resize each time
characters.removeAll(keepingCapacity: true)

characters.append("Sean")
characters.append("Noel")
characters.append("Dylan")

print(characters.count)

// handling errors in functions

// need to start by defining possible errors in an enum
enum PasswordError: Error {
    case short, obvious // says there are two possible errors: password too short or two obvious
}

// write function to throw errors
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
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

// if function can throw have to use a do/catch block
let string = "12345"
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("Please make your password less obvious.")
} catch {
    print("There was an error.")
}

// challenge: find square root of number from 1 to 10000
enum OutOfBounds: Error {
    case low, high
}

enum NoRoot: Error {
    case noRoot
}

func findSquareRoot(_ num: Int) throws -> Int {
    if num < 1 {
        throw OutOfBounds.low
    }
    if num > 10000 {
        throw OutOfBounds.high
    }
    
    for i in 1...100 {
        if i * i == num {
            return i
        }
    }
    throw NoRoot.noRoot
}

do {
    let result = try findSquareRoot(10001)
    print(result)
} catch OutOfBounds.low {
    print("Number is too small.")
} catch OutOfBounds.high {
    print("Number is too big.")
} catch NoRoot.noRoot {
    print("Root does not exist.")
} catch {
    print("There was an error.")
}

//: [Next](@next)
