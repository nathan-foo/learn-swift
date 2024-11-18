//: [Previous](@previous)

// Day 9

import Foundation

// assigning functions to variables
func greetUser() {
    print("Hi there!")
}
greetUser()

var greetCopy = greetUser // note no parenthesis on greetUser
greetCopy()

// what it would look like as a type annotation
var greetCopyWithTypes: () -> Void = greetUser

// declare function as a variable (called closure expression in swift)
let sayHello = { (name: String) -> String in // keyword in marks end of parameters
    "Hi there, \(name)!"
}
print(sayHello("Nathan"))

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
// what the default sort looks like
let sortedTeam = team.sorted()
print(sortedTeam)

// function to sort with team captain first, then alphabetical order
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// pass function we just made into other sort function
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// now rewrite the above as a closure
let newCaptainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})
print(newCaptainFirstTeam)

// swift has lots of shorthand to reduce code written so let's rewrite the function above

// notice we got rid of (by: ) and parameter/return types
let shortCaptainFirstTeam = team.sorted { name1, name2 in
    // we can either use our own var names as indicated in above comment or swift provided $0 and $1
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    // usually we declare our own variable names unless the code is simple
    return name1 < name2
}

// example of when to use $var
let reverseSorted = team.sorted { return $0 > $1 }
print(reverseSorted)

// more examples on closures
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// accepting functions as parameters

// pass in function to be used
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

// create closure with makeArray
let rolls = makeArray(size: 20) {
    // the function we passed in to makeArray
    Int.random(in: 1...20)
}
print(rolls)

// or declare function first
func generateNumber() -> Int {
    return Int.random(in: 1...20)
}

// and pass in function to makeArray
let newRolls = makeArray(size: 20, using: generateNumber)
print(newRolls)

// you can accept multiple functions as parameters
func doWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first")
    first()
    print("About to start second")
    second()
    print("About to start third")
    third()
}

// passing in the functions to use
doWork {
    print("This is the first task")
} second: {
    print("This is the second task")
} third: {
    print("This is the third task")
}

// checkpoint

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let newNumbers = luckyNumbers
    .filter { $0 % 2 != 0 }
    .sorted { $0 < $1 }
    .map { "\($0) is a lucky number" }

for i in newNumbers {
    print(i)
}

//: [Next](@next)
