import UIKit

var greeting = "Hello, playground"



let stem = "|"
let petal = "o"

func createFlower() -> String {
    return stem + petal + petal + stem
}

for _ in 1...3 {
    let flower = createFlower()
    print(flower)
}
