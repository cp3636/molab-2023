//
//  ContentView.swift
//  Practive slideshow
//
//  Created by Clarissa Pace on 11/14/23.
//




import SwiftUI

struct ImageSlider: View {
    
    // 1
    private let images = ["cow1", "cow2", "cow3", "cow4"]
    
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                 //3
                 Image(item)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        ImageSlider()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}











