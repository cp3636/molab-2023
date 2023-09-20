//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Day 9: Closures
func greetUser(){
    print("Hi there!")
}
greetUser()

var greetCopy = greetUser()
greetCopy()
//skip creating separate function

letsayHello = {
    print("Hi there!")
}
sayHello()

//accept paramters
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

var greetCopy: () -> Void = greetUser


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

//SORTED
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Anna" {
        return true
    } else if name2 == "Anna" {
        return false
    }

    return name1 < name2
}
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

//soted using a closure
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Anna" {
        return true
    } else if name2 == "Anna" {
        return false
    }

    return name1 < name2

})
print(captainFirstTeam)
//How to use trailing closures and shorthand syntax

let captainFirstTeam = team.sorted(by: { name1, name2 in})

//trainling closure syntax

let captainFirstTeam = team.sorted { name1, name 2 Int
    if name 1 == "Anna"{
        return true
    }
    else if name2 == "Anna"
                return false
        }
return name1 < name2
}

//shortening code

let captainFirstTeam = team.sorted {
    if $0 == "Anna" {
        return true
    } else if $1 == "Anna" {
        return false
    }

    return $0 < $1
}

//reverse sort

let reverseTeam = team.sorted{
    return $0 > $1
    
    //singlle line
    let reverseTeam = team.sorted { $0 > $1 }
    
    let uppercaseTeam = team.map { $0.uppercased() }
    print(uppercaseTeam)
    
    //Accept functions as parameters
    
    func makeArray(size: Int, using generator: () -> Int) -> [Int]
    //creaitng a new functions, first parameter is called "size"
    {
        var numbers = [Int]()
        
        for _ in 0..<size {
            let newNumber = generator()
            //second parameter is a function called "generator"
            numbers.append(newNumber)
        }
        
        return numbers
        //returns an array of integers
    }
    
    let rolls = makeArray(size 50) {
        Int.random(in: 1...20)
        //generate each number
    }
    print(rolls)
    
    //same result using dedicated functions
    
    func generateNumber() -> Int {
        Int.random(in: 1...20)
    }
    
    let newRolls = makeArray(size: 50, using: generateNumber)
    print(newRolls)
    
    //function accept multiple function parameters
    func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
        print("About to start first work")
        first()
        print("About to start second work")
        second()
        print("About to start third work")
        third()
        print("Done!")
    }
    
    //checkpoint 5
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


    let result = luckyNumbers
        .filter { !$0.isMultiple(of: 2) } // Filter out even numbers
        .sorted() // Sort the array in ascending order
        .map { "\($0) is a lucky number" } // Map the numbers to strings

    result.forEach { print($0) }
