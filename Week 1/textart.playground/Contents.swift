import UIKit

var greeting = "Hello, playground"

let ear = "^"
let eye = "°"
let nose = "."

func makeCat() -> String {
    return """
    \(ear)\(ear)
    \(eye) \(eye)
      \(nose)
    """
}

for _ in 1...3 {
    let cat = makeCat()
    print(cat)
}
