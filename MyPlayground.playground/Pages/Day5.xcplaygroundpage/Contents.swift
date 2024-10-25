//: [Previous](@previous)

// Day 5

import Foundation

let condition = false

// conditional if, else if, else statements
if condition {
    print ("Do something")
} else if !condition {
    print("Do something else")
} else {
    print("Do nothing")
}

var name = ""

// can use parenthesis
if (name.isEmpty == true) {
    print("Name is empty")
} else {
    print("Name is not empty")
}

if name.count == 0 && condition {
    name = "New name"
} else {
    name = "Another name"
}

print(name)

// ternary operator
// == works on Strings unlike Java
let user = (name == "Another name") ? name : "No name"
print(user)

// ternary operator within a print statement
let hour = 21
print(hour < 12 ? "Before noon" : "After noon")

let names = ["Scott", "Kravchenko", "Parikh"]
let count = names.isEmpty ? "No one" : "\(names.count) people"
print(count)

enum Weather {
    case sunny, rainy, windy, cloudy, snowy
}

let forecast = Weather.sunny

// use switch statement instead of if/else for enums
// switch statements ensure you cover all options exactly once and increase readability
switch forecast {
case .sunny:
    print("Weather is sunny")
case .rainy:
    print("Weather is rainy")
case .windy:
    print("Weather is windy")
case .cloudy:
    print("Weather is cloudy")
case .snowy:
    print("Weather is snowy")
}

let city = "Austin"

// set default case to fall back on
switch city {
case "Plano":
    print("City is Plano")
case "Austin":
    print("City is Austin")
default:
    print("City unknown")
}

//: [Next](@next)
