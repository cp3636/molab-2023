import UIKit

//Day 2 excercises
//Storing truth with Booleans (TRUE OR FALSE)

var greeting = "Hello, playground"

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))
//print true
let number = 120
print(number.isMultiple(of: 3))
//print true

let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

// exclamation (!) means "not," flipping Booleans value from true to false and vice versa

var isAuthenticated = false //starts as false
isAuthenticated = !isAuthenticated //set to true
print(isAuthenticated) //priint as true
isAuthenticated = !isAuthenticated //set to false
print(isAuthenticated) //print as false

//Joining strings together
// Use + to join two strings together

let firstPart = "Hello"
let secondPart = "World"
let newGreeting = firstPart + secondPart

let people = "Haters"
let action = "Hate"
let people2 = "Bakers"
let action2 = "Bake"
let lyric = people + "Gonna" + action + people2 + "Gonna" + action2
print(lyric)

//String interpolation, "lets us efficiently create strings from other strings, but also from integers, decimal numbers, and more."
let luggageCode = "1" + "2" + "3" + "4" + "5"
//double quote
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Me"
let issue = "Problem"
let greeting3 = "Hi"
let message = "It's \(name). \(greeting3). I'm the \(issue) it's \(name)."
print(message)
//CANNOT ADD INTEGERS TO STRINGS
//can do:
let number2 = 11
let missionMessage = "Apollo" + String(number2) + "landed on the moon."

//interpolation

let missionMessage2 = "Apollo \(number2) landed on the moon."

//calculations inside string interpolation
print("5 x 5 is \(5 * 5)")

//Recap

//constants using let and variavles using var
//use let to NOT change value
//use three double quotes if string goes over several lines
//decimal numbers are called Double
// true or false state using a Boolean, which can be flipped using the ! operator or by calling toggle()

//Checkpoint
let celcius = 25.0
let currentTempurature = 10.0
let newTemp = celcius+currentTempurature
print(newTemp)
let word = "Hot"
let tomorrowTemp = "It will be \(newTemp)°C tomorrow, so it will be very \(word)."
print(tomorrowTemp)
