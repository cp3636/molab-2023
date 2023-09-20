//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Day 10: How to create your own structs
//strucks let us create our own custom, complex data types, complete with their own variables and their own functions

//struct examples

struct Album{
    //two string constants
    let title: String
    let artist: String
    //integer constant
    let year: Int
    func printSummary(){
        func printSummary(){
            print("\(title) (\(year)) by \(artist)")
        }
    }
}
let midnights = Album(title: "Midnights", artist: "Taylor Swift", year: 2012)
let rare = Album(title: "Rare", artist: "Selena Gomez", year: 2020)

print(midnights.title)
print(rare.artist)

midnights.printSummary()
rare.printSummary()

//values that can change
struct Employee {
    let name: String
    var vacationRemaining: Int
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days{
            vacationRemaining -= days; CFCalendarGetMinimumDaysInFirstWeek
            print("Let's go to Malta!")
            print("Days remaining: \(vacationRemaining)")
        }
        else{
            print("There aren't enough days left :(")
        }
    }
}

//actually change data after calling employee as a constant
    var sam = Employee(name: "Samantha Jones", vacationRemaining: 14)
    sam.takeVacation(days: 5)
    print(sam.vacationRemaining)

    var sam1 = Employee(name: "Samantha Jones", vacationRemaining: 14)
    var sam2 = Employee.init(name: "Samantha Jones", vacationRemaining: 14)

//Compute property values dynamically

struct Employee1 {
    let name: String
    var vacationRemaining: Int
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.vacationRemaining -= 5
print(archer.vacationRemaining)
archer.vacationRemaining -= 3
print(archer.vacationRemaining)
// losing original amount of days granted
//rewrite

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var vacationRemaining1: Int {
    get {
        vacationAllocated - vacationTaken
    }
    set {
        vacationAllocated = vacationTaken + newValue
    }
}
var sam3 = Employee(name: "Samantha Jones", vacationRemaining: 14)
sam3.vacationTaken += 4
sam3.vacationRemaining = 5
print(sam3.vacationAllocated)

//How to take action when a property changes
//run when properties change
//two forms: a didSet, run when the propertyy just changed
//a willSet, run before property is set

struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

//MISTAKE: the end score changed without being printed
//add didSet so whenever score changes, code will run

struct newGame {
    var score = 0{
        didSet {
            print ("Score is now \(score)")
        }
    }
}
var game2 = newGame()
game2.score += 10
game2.score -= 3
game2.score += 1

//willSet variant that runs some code before the property changes
struct App{
    var contacts = [String]() {
        willSet {
            print("Current value is/: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
                       print("Old value was \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("Charlotte York")
app.contacts.append("Carrie Bradshaw")
app.contacts.append("Miranda Hobbes")

//How to create custom initializers
//Initializers are specialised methods that are designed to prepare a new struct instance to be used

//default initialiser for structs

struct Player {
    let name: String
    let number: Int
}
let player = Player(name: "Harvey Spector", number: 14)
// creates a new player
// !!!distinguish between the names of parameters coming in and the names of properties being assigned!!!

struct Player2 {
    let name: String
    let number: Int
    
    init(name: String, number: Int){
        self.name = name
        self.number = number
        //using "self" clarifies property belongs to my current
    }
}
//provide name, but randomised shirt number?
struct Player3 {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player3 = Player3(name: "Mike Ross")
print(player3.number)
