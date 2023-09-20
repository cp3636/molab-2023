//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Day 12: Create your own classes
//example

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var newGame = Game()
newGame.score += 10

//how to make one class inherit from another
// write a colon after the child class’s name, then add the parent class’s name

class Employee {
    let hours: Int
    
    init(hours: Init) {
        self.hours = hours
    }
}
//subclasses of employee, gain hours and property of initialisers

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
}

class Manager: Employee {
    func work(){
        print("I'm going to meetings for \(hours) hours")
    }
}
//customisation
let Hannah = Developer(hours: 8)
let Bella = Manager(hours: 10)
Hannah.work()
Bella.work()
//sharing methods
func printSummary() {
    print("I work \(hours) hours a day.")
}

let novall = Developer(hours: 8)
novall.printSummary()



//child class overidding parent
override func printSummary() {
    print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
}

//Add initialisers for classes

//define new class

class Vehicle {
    let isElectric: Bool
    //single boolean property
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}


//make car class inheriting from vehicle

class Car: Vehicle {
    let isConvertible: Bool
    init(isConvertible: Bool) {
        self.isConvertible = isConvertible
    }
}
// cannot run because haven't put value for if vehicle is electric or not
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
//super: call up to your superclass when you override a method

let teslaX = Car(isElectric: true, isConvertible: false)

//How to copy classes
class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)
// both should print taylor

//create a unique copy of a class instance
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

// How to create a deinitializer for a class

//Structs don’t have deinitializers, because you can’t copy them.

//Create a class that prints a message when it's created and destroy ed using an init and deinit

class persona {
    let id: Int
    init(id:Int){
        self.id = id
        print("User\(id): I'm online")

    }
    deinit{
        print("User \(id): I'm offline")
    }
}
// create and destroy using a loop
for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

//adding our user instances as they are created, they will be destroyed once the array is clear
var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

//How to work with variables inside classes

class User{
    var name = "Selena"
    
}
let user = User()
user.name = "Taylor"
print(user.name)

//creates user instance, but changees the constant value, but the class instance itself – the object we created – has not changed

// both user and name property variables
class User {
    var name = "Selena"
}

var user = User()
user.name = "Taylor"
user = User()
print(user.name)

// end up printing “Selena”, because even though we changed name to “Taylor” we then overwrote the whole user object with a new one, resetting it back to “Selena”

//Checkpoint 7
class Animal{
    let legs: Int
    init(legs: Int){
        self.legs = legs
    }
}
class Dog: Animal{
    func Speak(){
        print("Bark!")
    }
}
class Cat: Animal{
    let isTame: Bool
    
    init(legs: Int, isTame: Bool)
    self.isTame = isTame
    super.init(legs: legs)
  
    }
func Speak(){
    print("Meow")
}

class Corgi: Dog{
    override func Speak(){
        print("Corgi purrs")
    }
}
