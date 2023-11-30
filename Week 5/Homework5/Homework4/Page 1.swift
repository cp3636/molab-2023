//
//  Page 1.swift

import SwiftUI

let imageArray = [
 "https://tinyurl.com/munedz7j",
    "https://tinyurl.com/mwhy5s9k",
 "https://tinyurl.com/4xa4n9wk" ,
 
  
  
]

// Read in an image from the array of url strings
func imageFor(index: Int) -> UIImage? {
  let urlStr = imageArray[index % imageArray.count]
  return imageFor(string: urlStr)
}

// Read in an image from a url string
func imageFor(string str: String) -> UIImage? {
  if let url = URL(string: str) {
    if let imgData = try? Data(contentsOf: url) {
      return UIImage(data: imgData)
    }
  }
  return nil
}

struct Page1: View {
  var body: some View {
    VStack {
      ForEach(0 ..< 3) { index in
        if let image = imageFor(index: index) {
          Image(uiImage: image)
            .resizable()
            .frame(width: 100, height: 100)
        } else {
          Text("Error loading image")
        }
      }
    }
  }
}

struct Page1_Previews: PreviewProvider {
  static var previews: some View {
    Page3()
  }
}

