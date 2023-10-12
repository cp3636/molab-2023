//
//  Page 4.swift
//  Homework4
//
//  Created by Clarissa Pace on 10/4/23.
//
import SwiftUI

struct Page4: View {
    var body: some View {
        NavigationView {
            List {
                Text("Clarissa's Page")
                    .foregroundColor(.purple)
                    .font(.largeTitle)
                   
                
                NavigationLink {
                    Songs()
                } label: {
                    Image(uiImage: UIImage(named: "music")!)
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("Songs")
                        .foregroundColor(.cyan)
                }
                NavigationLink {
                    Dog()
                } label: {
                    Image(uiImage: UIImage(named: "Dog")!)
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("Dog")
                        .foregroundColor(.pink)
                }
                NavigationLink {
                    CountSheep()
                } label: {
                    Image(uiImage: UIImage(named: "moon")!)
                        .resizable()
                        .frame(width: 90, height: 90)
                    Text("Bed Time")
                        .foregroundColor(.blue)
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
