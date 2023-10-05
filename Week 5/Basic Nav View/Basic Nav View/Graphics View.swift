//
//  Graphics View.swift
//  Basic Nav View
//
//  Created by Clarissa Pace on 10/5/23.
//

//
// Display a computed image in SwiftUI View
//  Uses UIGraphicsImageRenderer

import SwiftUI
import UIKit

struct GraphicsView: View {
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            // Image(systemName: "globe")
            // .imageScale(.large)
            // .foregroundColor(.accentColor)
            // imageGlobe
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
        Image(uiImage: renderMaze(300, 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// from https://github.com/molab-itp/01-UIRender-playground

func renderMaze(_ width:Int, _ height:Int) -> UIImage {
    print("renderMaze width=\(width) height=\(height)")
    let len = width / 4;
    let hi = height;
    let sz = CGSize(width: width, height: height)
    let renderer = UIGraphicsImageRenderer(size: sz)
    let image = renderer.image { context in
        UIColor.red.setFill()
        context.fill(CGRect(x: 0, y: 0, width: len, height: hi))
        UIColor.green.setFill()
        context.fill(CGRect(x: len, y: 0, width: len, height: hi))
        UIColor.yellow.setFill()
        context.fill(CGRect(x: len*2, y: 0, width: len, height: hi))
        UIColor.black.setFill()
        context.fill(CGRect(x: len*3, y: 0, width: len, height: hi))
        UIColor.darkGray.setStroke()
        context.stroke(renderer.format.bounds)
        var box = renderer.format.bounds
        for _ in 0...5 {
            box = box.insetBy(dx: 4, dy: 4)
            context.stroke(box)
        }
        // UIColor(red: 158/255, green: 215/255, blue: 245/255, alpha: 1).setFill()
    }
    return image;
}
struct GraphicsView_Previews: PreviewProvider {
    static var previews: some View {
        GraphicsView()
    }
}
