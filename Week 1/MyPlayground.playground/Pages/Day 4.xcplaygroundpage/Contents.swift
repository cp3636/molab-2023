import UIKit
var greeting = "Hello, playground"
//Day 4 Exercises
//How to use type annotations

let surname: String = "Lasso"
var score: Int = 0
//surname must be a string and score must be an integer

var newScore: Double = 0
//make it a decimal

//string holds text
let playerName: String = "Bob"

//int holds whole numbers
var luckyNumber: Int = 23

//double holds decimal
let pi: Double = 3.14159

//Bool holds true or false
var isAuthenticated: Bool = true

//array holds different values, in order of added
var albums: [String] = ["Red", "Fearless"]

//dictionary how we decided should be accessed
var user: [String: String] = ["id": "@chickencat"]

//set stores in order optimised for checking what is contained
var books: Set<String> = Set(["The Giver", "Love on the Brain", "Happy Place"])

//string of arrays
var soda: [String] = ["coke", "sprite", "fanta"]

//Values of an enum have the same type as the enum itself
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//create a constant that doesn't have a value yet, later provide it
let username: String
// lots of complex logic
username = "@chickencat"
// lots more complex logic
print(username)

//Checkpoint 2
//create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let shows = ["Friends", "Suits", "Bob's Burgers"]
shows.count
Set(shows)
