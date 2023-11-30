//
//  Count sheep.swift
//  Homework4
//
//  Created by Clarissa Pace on 10/11/23.
//

import Foundation
import SwiftUI

struct CountSheep: View {
    @AppStorage("username") var username: String = "Anonymous"
    @AppStorage("score") var score: Int = 0

    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.0, green: 0.0, blue: 0.2, opacity: 1.0)
                .ignoresSafeArea()

            VStack {
                HStack {
                    Text("🌕")
                        .font(.system(size: 100))
                }

              Spacer()

                Text("Can't sleep? Count sheep!")
                    .foregroundColor(.white)
                    .font(.title)

             
                HStack {
                    Button("+ Sheep") {
                        score += 1
                    }
                    Button("- Sheep") {
                        if score > 0 {
                            score -= 1
                        }
                    }
                }
                .padding(.bottom, 20)

                Text("Sheep Count: \(String(repeating: "🐑", count: score))")
                    .foregroundColor(.white)
                    .font(.headline)
                     Spacer()
           
            
            }

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 50, y: 50)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 100, y: 100)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 300, y: 100)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 350, y: 50)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 200, y: 150)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 80, y: 150)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 340, y: 150)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 100, y: 30)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 40, y: 120)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 300, y: 30)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .position(x: 280, y: 150)
        }
        
    }
}

struct CountSheep_Previews: PreviewProvider {
    static var previews: some View {
        CountSheep()
    }
}
