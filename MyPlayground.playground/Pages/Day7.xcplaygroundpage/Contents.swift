//: [Previous](@previous)

// Day 7

import Foundation

// use functions for repetitive code
func welcome() {
    print("Welcome to my app!")
    print("This is a function")
    print("That can be reused.")
}

welcome()

// function parameters
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 2)

// multiple parameters
func printTimesWithEnd(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesWithEnd(number: 4, end: 5)

// returning from functions (-> points to return type)
func rollDice() -> Int {
    Int.random(in: 1...6) // don't need return statement for one line functions
}

print(rollDice())

func areLettersIdentical(str: String, otherStr: String) -> Bool {
    return str.sorted() == otherStr.sorted() // must use return for multi-line functions
}

print(areLettersIdentical(str: "Hello", otherStr: "World")) // false
print(areLettersIdentical(str: "ABC", otherStr: "CBA")) // true

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root // this function can be condensed to sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

func returnEarly(num: Int) {
    if (num == 0) {
        return // can use return in a void function to exit early
    }
    let newNum = num * num
    print(newNum)
}

returnEarly(num: 0) // does nothing
returnEarly(num: 2) // prints 4

// returning multiple values from a function with tuples
func getUser(first: String, last: String) -> (firstName: String, lastName: String) {
    (firstName: first, lastName: last) // returning without actual return statement again
}

let user = getUser(first: "Taylor", last: "Swift")
print("\(user.firstName) \(user.lastName)")

// assigning tuples to variables
let (firstName, lastName) = getUser(first: "John", last: "Doe")
print("\(firstName) \(lastName)")

// use underscore to ignore a part of a tuple when assigning
let (name, _) = getUser(first: "Jackie", last: "Chan")
print(name)

// you can customize parameter labels with the same return type for different functions
func hireEmployee(name: String) {
    print("Run function based on name!")
}

func hireEmployee(title: String) { // notice how this also takes a String
    print("Run function based on title!")
}

func hireEmployee(location: String) {
    print("Run function based on location!")
}

// use underscore to remove prefix from function
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
print(isUppercase(string)) // no prefix

// set custom prefix for readability
func printTimesTables(for number: Int) { // "for" before number is the external parameter name
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)") // internally the variable name is still "number"
    }
}

printTimesTables(for: 2) // much more readable!

//: [Next](@next)
