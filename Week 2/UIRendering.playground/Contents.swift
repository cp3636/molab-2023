import UIKit
// Read in an image from a url string
func imageFor(_ str: String) -> UIImage {
    let url = URL(string: str)
    let imgData = try? Data(contentsOf: url!)
    let uiImage = UIImage(data:imgData!)
    return uiImage!
}

let dog1 = "https://tinyurl.com/2p9azjnk"
let Dog1 = imageFor(dog1)


let dog2 = "https://tinyurl.com/2yxmp3t5"
let Dog2 = imageFor(dog2)

let dog3 = "https://tinyurl.com/4fcjp7f9"
let Dog3 = imageFor(dog3)

let dog4 = "https://tinyurl.com/4jzf22vx"
let Dog4 = imageFor(dog4)

let sun = "https://tinyurl.com/58xm2dt4"
let sun1 = imageFor(sun)

let fall = "https://tinyurl.com/ms6xyhn2"
let fall1 = imageFor(fall)

let spring = "https://tinyurl.com/38ky5j3f"
let spring1 = imageFor(spring)

let snow = "https://tinyurl.com/35d7ejjp"
let snow1 = imageFor(snow)

let heart = "https://tinyurl.com/mnwp6ths"
let heart1 = imageFor(heart)

let corgi = "https://tinyurl.com/4e6fxrhf"
let corgi1 = imageFor(corgi)

let sz = CGSize(width: 1000, height: 1000)
let renderer = UIGraphicsImageRenderer(size: sz)

let image = renderer.image { (context) in
    Dog1.draw(in: CGRect(x: 0, y: 0, width: 550, height: 400))
    Dog2.draw(in: CGRect(x: 400, y: 400, width: 600, height: 400))
    Dog3.draw(in: CGRect(x:0, y: 400, width: 500, height: 400))
    Dog4.draw(in: CGRect(x:500, y:0, width: 600, height: 400))
    sun1.draw(in: CGRect(x:20, y:20, width: 100, height: 100))
    fall1.draw(in: CGRect(x:860, y:20, width: 100, height: 100))
    spring1.draw(in: CGRect(x:860, y:450, width: 100, height: 100))
    snow1.draw(in: CGRect(x:20, y:450, width: 100, height: 100))
    heart1.draw(in: CGRect(x:350, y:230, width: 300, height: 300))
    corgi1.draw(in: CGRect(x:410, y:280, width: 180, height: 180))
}

image
