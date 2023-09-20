//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// Day 8: Default values for Parameters

func printTimesTables(for number: Int, end: Int = 12){
    for i in 1...end{
        print("\(i) x \(number) is \(i *number)")
    }
}
printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

//Handle errors in functions

//Ex: Let’s work through a complete example: if the user asks us to check how strong their password is, we’ll flag up a serious error if the password is too short or is obvious.
enum PasswordError: Error{
    case short, obvious
}
// short & obvious only that they exist, not what they mean

func checkPass(_password: String) throws -> String{
    if password.count < 5{
        throw Password.Error.short
    }
    if password == "12345"{
        throw PasswordError.obvious
    }
    if password.count < 8{
        return "Ok"
    }
    else if password.count < 10 {
      return "Good"
    } else{
        return "Excellent"
    }
}
// starting a block of work that might throw errors use "do"
//calling one or more throwing functions use "try"
//handling any thrown errors use "catch"

do{
    try someRiskyWork()
    catch{
        print("Handle errors here")
    }
    
}
let string = "12345"
do{
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}
catch{
    print("There was an error.")
}
let string = "12345"

do{
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}
catch PasswordError.short{
    print("Please use a longer password.")
}
catch PasswordError.obvious{
    print("Stop using the same password!")
}
catch{
    print("There was an error.")
}

//Checkpoint 4

enum squareRootChallenge: Error{
    case noRoot, unavailable
}
func integerRoot (_ number: Int) throws -> Int{
    guard number >= 1 && number <= 10_000 else{
        throw SquareRootError.unavailable
    }
    var guess = number/2
    var lastGuess = 0
}
while guess = ! lastGuess{
    lastGuess = guess
    guess = (guess + number / guess) / 2
}
        
if guess * guess == number{
    return number
}
else{
    throw SquareRootError.noRoot
}
do{
    let result = try integerSquareRoot(16)
}
