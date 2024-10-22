//: [Previous](@previous)

// Day 4

import Foundation

let name: String = "Joe" // type annotation (declares variable type explicitly)
let score: Int = 0
let doubleScore: Double = 0 // initialize as double instead of int

let albums: [String] = ["Lover", "Fearless"]
let user: [String: String] = ["id": "@nathan"]
let books: Set<String> = Set([
    "The Fault in Our Stars",
    "Turtles All the Way Down"
])

let teams: [String] = [] // create empty array
let allies = [String]()
let enemies: [String] = [String]() // all do the same thing

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light
style = .dark

let username: String
// do some logic
username = "@newuser"
// do more logic
print(username)

let someStrings = ["Aaron", "Zach", "David", "Anna", "Parker", "Dillan"]
print("Elements in someStrings: \(someStrings.count)")

let otherStrings: [String] = ["Jason", "Paul", "Melody", "Jason"]
print("Elements in otherStrings: \(otherStrings.count)")

let someSet = Set(someStrings)
print("Uniques in someSet: \(someSet.count)")

let otherSet: Set<String> = Set(otherStrings)
print("Uniques in otherSet: \(otherSet.count)")

//: [Next](@next)
