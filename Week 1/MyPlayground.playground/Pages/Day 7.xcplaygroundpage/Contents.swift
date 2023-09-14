import UIKit
var greeting = "Hello, playground"
//Day 7 Exercises
//Reuse code with functions

//making function that are open to configuration
func printTimesTables(number: Int){
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

//mutltiple parameter
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
//number and end are parameters
printTimesTables(number: 5, end: 20)

//how to return values from functions
//sqrt calculates the wquare root of a number

let root = sqrt(169)
print(root)

//return your own value from a function, you need to do two things:

//1. Write an arrow then a data type before your function’s opening brace, which tells Swift what kind of data will get sent back.
//2. Use the return keyword to send back your data
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice

// do two strings contain the same letters, regardless of their order?
func similarLetters (String, string2: String)
    
}

