//
//  ContentView.swift
//  Week 3 demo
//
//  Created by Clarissa Pace on 9/21/23.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//                .font(.largeTitle)
//        }
//        .padding()
//    }
//}
//
//
//
//
//struct ContentView_preview: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            //            Image(systemName: "globe")
            //                .imageScale(.large)
            //                .foregroundColor(.accentColor)
            //            imageGlobe
            imageMaze
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.indigo)
        }
        .padding()
    }
    
    var imageGlobe: some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundColor(.accentColor)
    }
    
    var imageMaze: some View {
        Image(uiImage: FlowerEmojiCollageView(300, 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct FlowerEmojiCollageView: View {
    let flowerEmojiArray: [[String]] = [
        ["", "🌸", "🌸", "", ""],
        ["🌸", "🌼", "🌸", "🌼", "🌸"],
        ["🌸", "🌸", "🌼", "🌸", "🌸"],
        ["", "🌸", "🌸", "🌸", ""]
    ]

    var body: some View {
        VStack {
            ForEach(0..<flowerEmojiArray.count, id: \.self) { row in
                HStack {
                    ForEach(0..<flowerEmojiArray[row].count, id: \.self) { col in
                        Text(flowerEmojiArray[row][col])
                            .font(.system(size: 30))
                    }
                }
            }
        }
    }
}

@main
struct EmojiCollageApp: App {
    var body: some Scene {
        WindowGroup {
            FlowerEmojiCollageView()
        }
    }
    return image;
}
