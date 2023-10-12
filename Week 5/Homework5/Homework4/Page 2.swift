//
//  Page 2.swift
//  Homework4
//
import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    var urlStr: String
    var name: String
}

let imageItems: [Item] = [
    Item(urlStr: "https://tinyurl.com/mwhy5s9k", name: "Songs"),
    Item(urlStr: "https://tinyurl.com/4xa4n9wk", name: "Dog"),
]

struct Page2: View {
    var body: some View {
        VStack {
            ForEach(imageItems) { item in
                HStack {
                    if let image = imageFor(string: item.urlStr) {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 100, height: 100)
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    Text(item.name)
                    Spacer()
                }
            }
        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}


