import UIKit

//Day 1 excercises
//variables and constants
var greeting = "Hello, playground"
//Create new variable, assign it to something and initial greeting

var name = "Clarissa"
print(name)

name = "Rose"
print(name)
name = "Gen"
print(name)
//changing the variable

let character = "Bob"
//variable won't change
//character = "Tina"
//error will appear


var playerName = "Gene"
print(playerName)
playerName = "Louise"
print(playerName)

let managerName = "Linda"
let dogBreed = "Corgi"
let meaningOfLife = "unlimited Gold fish"


//strings
let actor = "Gabriel Macht"
let filename = "london.jpg"
let result = "You Win!"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."
//inside the string, not ending it
let movie = """
A day in
the life of an
Apple engineer
"""
//mark a multi-line string
print(actor.count)
//read length of a string (13)


print(result.uppercased())

print(movie.hasPrefix("A Day"))

print(filename.hasSuffix(".jpg"))

//storing whole numbers
let score = 10
let reallyBig = 100_000_000
//underscore placement doesn't matter to swift

//creating integers with arithmetic operators
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)
var counter = 10

counter = counter + 5
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2
