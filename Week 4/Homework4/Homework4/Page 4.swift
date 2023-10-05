//
//  Page 4.swift
//  Homework4
//
//  Created by Clarissa Pace on 10/4/23.
//
import SwiftUI
let imagesItems: [Item] = [
    Item(urlStr: "https://tinyurl.com/mwhy5s9k", name: "Songs"),
    Item(urlStr: "https://tinyurl.com/4xa4n9wk", name: "Dog"),
]


struct Page4: View {
    var body: some View {
        NavigationView {
            List {
                
                    
                NavigationLink {
                    Page3()
                } label: {
                    Text("Clarissa's Page")

                        .foregroundColor(.teal)
                        .frame(maxWidth: .infinity)
                    
                        .font(.title)
                        .foregroundColor(.blue)
                    
                }
                NavigationLink {
                    Songs()
                } label: {
                    Text("Songs")
                        .foregroundColor(.blue)
                }
                NavigationLink {
                    Dog()
                } label: {
                    Text("Dog")
                        .foregroundColor(.pink)
                 
                }
            }
        }
    }
}


struct Page4_Previews: PreviewProvider {
  static var previews: some View {
    Page4()
  }
}
