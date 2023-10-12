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
    @State private var isPulsing = false

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

            ForEach(1..<5) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: isPulsing ? 30 : 20, height: isPulsing ? 30 : 20) //
                    .foregroundColor(.white)
                    .position(x: CGFloat.random(in: 30...400), y: CGFloat.random(in: 30...170))
            }
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                isPulsing.toggle()
            }
        }
    }
}

struct CountSheep_Previews: PreviewProvider {
    static var previews: some View {
        CountSheep()
    }
}

