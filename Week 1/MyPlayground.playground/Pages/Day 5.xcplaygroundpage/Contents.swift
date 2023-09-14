import UIKit
var greeting = "Hello, playground"
//Day 5 Exxercises
//Checking if a condition is true or false

let score = 85

if score > 80{
    print("Great Job!")
}

let tempurature = 31
let age = 25
let grade = 90

if tempurature > 30 {
    print("it's boiling hot!")
}

if age >= 25 {
    print("congrats you can rent a car")
}

if grade < 70 {
    print("try again")
}
//placing in alphabetical order
let ourName = "Bob Belcher"
let friendName = "Arthur Weasley"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
    
}
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

//equal to
let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Selena Gomez"{
    print("Welcome, \(name)")
}
//check if username entered by user is empty or not
var username = "chickencat1233"

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

if username.count == 0{
    username = "Anonymous"
}

if username.isEmpty == true {
    username = "Anonymous"
}
if username.isEmpty {
    username = "Anonymous"
}

//check multiple conditions

let Age = 20

if Age >= 18{
    print("You can vote")
    
}
if Age < 18 {
    print("Wait until next year")
}

//else block out code

if Age >= 18{
    print("You can vote ")
}

if Age < 18{
    print("This will run if the condition is true")
} else{
    print("This will run if the condition is false")
}
//else if allows us to run a new check if the first fails
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}
//two conditions

 let temp = 25
if temp > 20{
    if temp < 30{
        print("It's a nice day")
    }
}
//shorter way: use && to combine two conditions

if temp > 20 && temp < 30{
    print ("We are having nice weather")
}
//"||" used as or

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true{
    print("Can buy game")
}
//Don't need == becasue we're checking a boolean
if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

//enum containing five cases

enum Pets{
    case Dog, Cat, Hedgehog, Pony, Bunny
}

let pet = Pets.Dog
if pet == .Dog || pet == .Cat{
    print("Aw basic pet")
}
else if pet == .Bunny{
    print("It's ears are long")
}
else if pet == .Pony{
    print("Where are you going to keep it?")
    
}
else {
    print("That's a prickly pet")
}
//How to use switch statements to check multiple conditions
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}
//replace all if and else if with .case and add switch, let's us check individual cases one by one

switch forecast {
case .sun:
    print("It's sunny out")
case .rain:
    print("We need an umbrella")
case .wind:
    print("I wish I had a windbreaker")
case .snow:
    print("Let's go sledding")
case .unknown:
    print("Check the weather app")
}

// if all caes fail to match
//default
let place = "Metropolis"

switch place {
case "Asgard":
    print("Thor!")
case "New York City":
    print("Hey Spiderman!")
case "Wakanda":
    print("Black Panther!")
default:
    print("Who are you?")
}
//Use ternary conditional operator for quick tests

let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's befor noon" : "It's after noon")
//no assigned result, just true or false

//reads count and sends back one of two strings
let names = ["Emma", "Clarissa", "Cayley"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)
//counts how many people there are if not empty

//same as line 221 but using if else
if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}
