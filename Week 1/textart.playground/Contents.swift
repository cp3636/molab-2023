import UIKit

var greeting = "Hello, playground"

var beak = ">"
var head = "(.)"
var back = "__"
var body = "(___/"

func trail() -> String {
    return "    "
}

func room() -> String {
    return "      "
}

func top() -> String {
    return beak + head + back
}

func Body() -> String {
    return body
}

for _ in 1...2 {
    print(top() + trail() + top() + trail() + top())
    print(Body() + room() + Body() + room() + Body())
}
