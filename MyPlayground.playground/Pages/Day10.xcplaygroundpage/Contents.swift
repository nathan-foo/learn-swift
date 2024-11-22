//: [Previous](@previous)

// Day 10

import Foundation

// custom structs (like mini classes in Java)

struct Album {
    // declares variables in a struct
    let title: String
    let artist: String
    let year: Int
    
    // declares methods for a struct (functions inside structs are called methods)
    func printSummary() {
        print("\(title) (\(artist), \(year))")
    }
}

// creates a new Album with title, artist, year
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
red.printSummary()

struct Employee {
    let name: String
    // sets a default number of vacation days
    var vacationRemaining = 10
    
    // if we want to change data in the struct we have to mark with mutating
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("Going on vacation! Days remaining: \(vacationRemaining)")
        }
        else {
            print("Sorry, there are not enough vacation days :(")
        }
    }
}

// must use var instead of let for mutating
var archer = Employee(name: "Archer", vacationRemaining: 5)
archer.takeVacation(days: 4)
archer.takeVacation(days: 3)

// using default value for vacation days
var hunter = Employee(name: "Hunter")
hunter.takeVacation(days: 7)

struct NewEmployee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    // using dynamic updates for variable
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var newArcher = NewEmployee(name: "Archer", vacationAllocated: 14)
// updating vacation taken directly
newArcher.vacationTaken += 4
print("New days remaining: \(newArcher.vacationRemaining)")
newArcher.vacationTaken += 4
print("New days remaining: \(newArcher.vacationRemaining)")

// taking action when chaning a property
struct Game {
    // score has listener for when it is updated
    var score = 0 {
        // didSet is a swift provided observer that runs code right after a property changes
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        // runs right before updating a variable
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)") // newValue provided by swift inside of willSet
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)") // oldValue provided by swift inside didSet
        }
    }
}

var app = App()
app.contacts.append("Vishvesh")
app.contacts.append("Derek")
app.contacts.append("Sean")

// creating custom initializers
struct Player {
    // like instance variables in java
    let name: String
    let number: Int
    
    // like constructor in java
    init(name: String, number: Int) {
        // this.name = name in java
        self.name = name
        self.number = number
    }
    
    // overloading constructor in java
    init(name: String) {
        self.name = name
        // custom functionality when initializing
        self.number = Int.random(in: 1...99)
    }
}

let player1 = Player(name: "Joe", number: 100)
let player2 = Player(name: "Sam")
print(player1)
print(player2)

//: [Next](@next)
