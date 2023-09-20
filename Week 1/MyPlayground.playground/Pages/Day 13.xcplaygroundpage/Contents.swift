//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Day 13: Create and use protocols
//protocols are a bit like contracts, let us define what kinds of functionality we expect a data type to support
//they let us define a series of properties and methods that we want to use.
func commute(distance: Int, using vehicle: Car){
   //how doesn't matter
}

//we could define a new Vehicle protocol like this
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// make a Car struct that conforms to Vehicle, like this:
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm going \(distance)km west.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}
//update commute, uses new methods added to car
func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

// How to use opaque return types
//let us remove complexity in our code

func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())
// "==" means equatable, compared for equality
//Because both of these types conform to Equatable, we could try amending our function to return an Equatable value, like this:

func getRandomNumber() -> Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> Equatable {
    Bool.random()
}
//bool and int aren't interchangeable, so can't use == to compare the two

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

//create and use extensions
//let's us add functionality to any type
//trimmingCharacters(in:): removes certain kinds of characters from the start or end of a string, such as alphanumeric letters, decimal digits, or, most commonly, whitespace and new lines.

//string that has whitespace on both sides
var quote = "   The truth is rarely pure and never simple   "

//get rid of whitespace
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

//shorten extension
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

//remove whitespace and newlines
let trimmed = quote.trimmed()

//modify string directly
mutating func trim() {
    self = self.trimmed()
}

//lines: breaksup string into array of individual lines
var lines: [String] {
    self.components(separatedBy: .newlines)
}

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

//create and use protocol extensions
//Protocols let us define contracts that conforming types must adhere to, and extensions let us add functionality to existing types
let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

//using boolean operator
if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

//extension for array
extension Array {
    var isNotEmpty; Bool {
        is Empty == false
    }
}

//place extensions beforehand
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

//protocol
protocol Person {
    var name: String { get }
    func sayHello()
}
//confroms to person because exployee can rely on provided inside protocol function
struct Employee: Person {
    let name: String
}

//Checkpoint 8
protocol Building {
    var numRooms: Int
    var cost: Int
    var estateAgent
    func saleSummary
}
struct House: Building {
    let numRooms: Int
    let cost: Int
    let estateAgent: String
}

init(numRooms: Int, cost: Int, estateAgent: String) {
        self.numRooms = numRooms
        self.cost = cost
        self.estateAgent = estateAgent
