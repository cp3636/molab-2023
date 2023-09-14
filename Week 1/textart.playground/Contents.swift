import UIKit

var greeting = "Hello, playground"



let stem = "-"
let leaf = "^"
let petal = "o"
let wholeflower = "🌸"

func createFlower() -> String {
    return stem + leaf + stem + petal
}

for _ in 1...3 {
    let flower = createFlower()
    print(flower)
}
print (wholeflower)
