//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Day 11: limit access to internal data using access control
//hide data from external access
struct cookieJar {
    var cookie = 0
    mutating func deposit(amount: Int) {
        funds += amount
    }
    mutating func eat(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        }
        else {
            return false
        }
    }
}

// deposit and take out cookies
var jar = cookieJar ()
jar.deposit(amount: 50)
let tast = account.eat(amount: 2)

if success{
    print("Those were good cookies!")
}
else{
    print("I threw up those cookies")
}

//Use private for “don’t let anything outside the struct use this.”
//Use fileprivate for “don’t let anything outside the current file use this.”
//Use public for “let anyone, anywhere use this.”

//Static properties and methods

struct School {
    static var studentCount = 0
    static func add(student: String){
        print("\(student) joined this school")
        studentCount += 1
    }
    }
//static means studentCount and add properties belong to School struct
School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

//USING STATIC EXAMPLE PROPERTY ON THE STRUCT

struct Employee {
    let username: String
    let password: String
    static let exaple = Employee(username:"eiurgheirug", password: "EIRGNERF")
}

//Checkpoint 6
struct myCar {
let carModel: String
let seatCount: Int
private var currentGear = 1
private var maxGear = 10
    init(carModel:String, seatCount: Int){
        self.carModel = carModel
        self.seatCount = seatCount
    }
    //change gear down
    mutating func changeGear(){
        if currentGear > maxGear{
        print("THE CAR BROKE")
            currentGear -=1
            }
        else{
            print("You know how to use a stick shift well")
        }
    }

}

