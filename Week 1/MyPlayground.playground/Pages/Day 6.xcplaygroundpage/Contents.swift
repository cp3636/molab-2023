import UIKit
var greeting = "Hello, playground"
//Day 6 Exercises
//using a loop for repeat work

let platforms = ["iOS", "macOS", "tvOS", "watchOSS"]

for name in platforms {
    print("Swift works great on \(name).")
}

//loop over a fixed range of numbers

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

//put loops inside loops: nested loops
for i in 1...12 { // range
    print("The \(i) times table:")

    for j in 1...12 { // j is the second number counting with
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}
//counting the range except the final number using ..<

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
//loop variable can be replaced with underscore
//instead of i or j use _

var lyric = "Haters gonna"

for _ in 1...5{
    lyric += "hate"
}

print(lyric)

//Use a "while" loop to repeat work
// while executes a loop until the condition is false

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

//random(in:) to give a rnadom Int or Double somewhere in the range
//random integer between 1-1000
let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...2)

//create a virtual 20 sided dice
//create an integer to store our roll
var roll = 0

//loop until 20
while roll != 20{
    //roll a new dice and print
    roll = Int.random(in:1...20)
    print("The number is \(roll)")
}

print("Cool number")

//Skip loop items with break and continue
//continue skips the current loop
//break skips all remaining iterations

let filenames = ["brinkley.jpg", "taco.jpg", "movieposter.jpg", "flower.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false{
        continue
    }
    print("Found picture: \(filename)")
}

//break immediately exits loops, continue skips rest of loop

let number1 = 3
let number2 = 23
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        if multiples.count == 10 {
        break
    }
}
}
print(multiples)

//Checkpoint 3
//The problem is called fizz buzz, and has been used in job interviews, university entrance tests, and more for as long as I can remember. Your goal is to loop from 1 through 100, and for each number:

//If it’s a multiple of 3, print “Fizz”
//If it’s a multiple of 5, print “Buzz”
//If it’s a multiple of 3 and 5, print “FizzBuzz”
//Otherwise, just print the number.


let numberFizz = 3
let numberBuzz = 5

for i in 1...100 {
    if i.isMultiple(of: numberFizz) && i.isMultiple(of: numberBuzz) {
        print("FizzBuzz")
    } else if i.isMultiple(of: numberFizz) {
        print("Fizz")
    } else if i.isMultiple(of: numberBuzz) {
        print("Buzz")
    } else {
        print(i)
    }
}
// don't know if I need to use [Int]
