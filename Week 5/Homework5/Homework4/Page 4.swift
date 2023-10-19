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
                
                NavigationLink(destination: Songs()) {
                    HStack {
                        Image(systemName: "music.note")
                            .resizable()
                            .frame(width: 90, height: 100)
                            .foregroundColor(.cyan)
                        Text("Songs")
                    }
                }
                
                NavigationLink(destination: Dog()) {
                    HStack {
                        Image("Dog")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.pink)
                        Text("Dog")
                    }
                }
                
                NavigationLink(destination: CountSheep()) {
                    HStack {
                        Image(systemName: "moon.fill")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .foregroundColor(.blue)
                        Text("Bed Time")
                    }
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
