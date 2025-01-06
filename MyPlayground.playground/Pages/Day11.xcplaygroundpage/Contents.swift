//: [Previous](@previous)

// Day 11

import Foundation

struct BankAccount {
    // make funds private so outside code cannot mutate
    
    // private: only within struct
    // fileprivate: only within file
    // public: anyone can access
    // private(set): anyone can read but only struct can modify
    
    private(set) var funds = 0;
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 1000)
let success = account.withdraw(amount: 2000)

if success {
    print("Withdrew successfully")
} else {
    print("Failed to withdraw")
}

print(account.funds)

struct School {
    // use static to make properties part of the struct
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) has joined the school")
        studentCount += 1
    }
}

School.add(student: "Joe")
print(School.studentCount)

// static properties good for organization
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeUrl = "google.com"
}

struct Employee {
    let username: String
    let password: String
    
    // create example structs to use in code
    static let example = Employee(username: "Joe", password: "123")
}

print(Employee.example)
print(Employee.example.username)

struct Car {
    let model = "f150"
    let seats = 5
    private(set) var gear = 1
    
    mutating func setGear(newGear: Int) -> Bool {
        if newGear >= 1 && newGear <= 10 {
            gear = newGear
            return true
        } else {
            return false
        }
    }
}

var car = Car()
car.setGear(newGear: 2)
print(car)
print(car.model)

//: [Next](@next)
