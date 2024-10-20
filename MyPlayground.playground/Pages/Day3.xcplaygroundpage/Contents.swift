//: [Previous](@previous)

// Day 3

import Foundation

var names =  ["Joe", "Sophie", "Bob"] // array of strings
let numbers = [1, 4, 9, 16, 25] // array of ints
let temps = [1.1, 2.2, 3.3, 4.4] // array of doubles

print(names[0]) // prints joe
print(temps[3]) // prints 4.4

names.append("Grace") // add items to end of list

let name = names[3]
let num = numbers[4]
let add = name + String(num) // must be same type to add

print(add)

var scores = Array<Int>() // declare empty array
scores.append(100)
scores.append(200)
scores.append(300)
print(scores)

var shorthand = [String]() // shorthand way of declaring array
shorthand.append("Cool")
shorthand.append("Awesome")
shorthand.append("Great")
print(shorthand)

print(shorthand.count) // array size

shorthand.remove(at: 2) // remove item in array
print(shorthand.count)

shorthand.removeAll() // remove all
print(shorthand.count)

let movies = ["Frozen", "Lion King", "Finding Nemo"]
print(movies.contains("Frozen")) // check if item is in array

let cities = ["Houston", "Sugarland", "Fort Worth", "Austin"]
print(cities.sorted()) // sorts items in array

let reversedCities = cities.reversed()
print(reversedCities) // creates reversed collection but remembers original order

// dictionaries in swift let you declare your own keys and values
let employee = [
    "name": "Taylor Swift",
    "job" : "Singer",
    "location": "Nashville"
]

print(employee["name", default: "Unknown"]) // taylor swift (without default would be optional)
print(employee["address", default: "Unknown"]) // set default value since key not guaranteed

// can use different types as keys
let olympics = [
    2016: "Rio",
    2021: "Tokyo",
    2024: "Paris"
]

print(olympics[2016, default: "Unknown"])

var gpas = [String: Double]() // declare empty dictionary
gpas["Sean"] = 4.0
gpas["Joe"] = 2.0
gpas["Tom"] = 3.6

gpas["Joe"] = 3.8 // modify key in dictionary

print(gpas.count) // get size of dictionary
print(gpas["Joe", default: 0.0]) // expected 3.8

// sets in swift - no particular order and no duplicates
let students = Set([
    "Sean",
    "Dylan",
    "William",
    "Noel"
])

print(students) // random order

var moreStudents = Set<String>()
moreStudents.insert("Vish")
moreStudents.insert("Alex")
moreStudents.insert("Derek")

print(moreStudents)
print(moreStudents.contains("Persephonie")) // much faster than array lookup
print(moreStudents.count) // get size of set
print(moreStudents.sorted()) // can also sort a set

// enums - more optimized way of storing fixed constants
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

// can explicity state each case if you want
enum Weekend {
    case saturday
    case sunday
}

var day = Weekday.monday // guarantees you don't make a mistake
day = Weekday.friday // reassign day to friday
day = .thursday // shorthand - swift knows we are using Weekday enum

//: [Next](@next)
