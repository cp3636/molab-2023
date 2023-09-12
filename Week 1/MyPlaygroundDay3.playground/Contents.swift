import UIKit

//Day 3 Exercises
//How to store ordered data in arrays
//Arrays can hold any amount of strings
var greeting = "Hello, playground"
//array of strings
var beatles = ["John", "Paul", "George", "Ringo"]
//array of integers
let numbers = [4, 8, 15, 16, 23, 42]
//array of doubles
var temperatures = [25.3, 28.2, 26.4]
//item's index count begins at 0
print(beatles[0])
print(numbers[1])
print(temperatures[2])

//append() to add new items

beatles.append("Paco")
beatles.append("Homer")

//cannot add different types of data to an array (numbers to words, and vice versa)

//ex: CAN'T DO tempuratures.append("Brinkley")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
//different way to write it
var albums2 = [String]()
albums2.append("Folklore")
albums2.append("Fearless")
albums2.append("Red")

//how mant items are in an array
print(albums.count)

//removing items from an array
var characters = ["Bob", "Linda", "Tina", "Gene", "Louise", "Teddy"]
characters.remove(at: 5) //remove Teddy
print(characters.count) //Count 5
//removing all characters
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen")) //no Frozen in this array

//sort alphabetically or numerically
let cities = ["London", "New York", "Rome", "Paris"]
print(cities.sorted())

//reverse an array
let friends = ["Rose", "Genny", "Brinkley", "Ana", "Katy"]
let reversedfriends = friends.reversed()
print(reversedfriends)

//Dictionaries: allows us to decide where items should be stored
let employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
//splitting into individual lines
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Kaitlyn" : false,
    "Victoria" : true,
    "Brinkley": true,
]


var archEnemies = [String: String]()
archEnemies ["Batman"] = "The "

