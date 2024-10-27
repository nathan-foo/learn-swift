//: [Previous](@previous)

// Day 6

import Foundation

// for loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// os is a variable name, can be changed to anything
for os in platforms {
    print("Swift works for \(os)!")
}

print() // new line

// loop over a fixed range of numbers
// a range is its own data type in swift
for i in 1...5 {
    print("\(i) is a cool number!")
}

print()

// nested loops
for i in 1...4 {
    print("The \(i) times table:")
    for j in 1..<5 { // exclude the last number in the range
        print("\(i) x \(j) is \(i * j)")
    }
    print()
}

// can use an underscore instead of loop variable if you don't use it
var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print("\(lyric)\n") // \n also newline

// while loops
var countdown = 10
while (countdown > 0) {
    print("\(countdown)...")
    countdown -= 1
}
print("Blastoff!\n")

// random variables
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// roll a 20 sided dice
var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!\n")

// continue skips rest of loop body and moves to next if condition not met
let filenames = ["me.jpg", "work.txt", "joe.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

// break ends immediately if condition met
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: 4) && i.isMultiple(of: 14) {
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}
print("\(multiples)\n")

// checkpoint
for num in 1...100 {
    if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if num.isMultiple(of: 3) {
        print("Fizz")
    } else if num.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(num)
    }
}

//: [Next](@next)
