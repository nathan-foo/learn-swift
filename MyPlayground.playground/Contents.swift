import Cocoa

// Day 1

var variable = "Hello world" // var - declares variable, can be changed
let constant = "Goodbye world" // let - declares constant, cannot be changed

var playerName = "Joe"
print(playerName) // print statements

let quote = "Use a \"backslash\" to insert quotation marks."

let multiline = """
This is a
multiline
string.
"""

let nameLength = playerName.count

print(nameLength) // prints length of string
print(quote.uppercased()) // string to uppercase
print(multiline.hasPrefix("This")) // checks prefix of string
print(constant.hasSuffix("world")) // checks suffix of string

let score = 10
let bigNum = 100_000_000 // swift ignores underscores
var newScore = score * 3 + 6 / 2 - 1 // operations on ints

newScore += 1 // newScore++ does not work
newScore *= 2

print(newScore - 2) // expected 64
print(newScore.isMultiple(of: 3)) // checks if newScore is a multiple of 3
print(4.isMultiple(of: 2)) // expected true

let decimal = 0.1 + 0.2
let int = 2
let add = Int(decimal) + int // cannot add decimals to integers or vice versa (type safety)
print(add) // decimal rounds when converted to int
