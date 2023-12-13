//
//  Count Sheep.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 11/29/23.
// Animating References: https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-basic-animations#:~:text=SwiftUI%20has%20built%2Din%20support,when%20that%20specific%20value%20changes.

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
                    .fontWeight(.bold)
                    .padding(.bottom, 40)

                HStack(spacing: 20) {
                    Button(action: {
                        score += 1
                    }) {
                        Text("+ Sheep")
                            .foregroundColor(.white)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                             .background(Color(red: 0.35, green: 0.61, blue: 0.91))
                            .cornerRadius(10)
                    }

                    Button(action: {
                        if score > 0 {
                            score -= 1
                        }
                    }) {
                        Text("- Sheep")
                            .foregroundColor(.white)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                           
                            .background(Color(red: 0.09, green: 0.40, blue: 0.77))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                Text("Sheep Count: \(String(repeating: "🐑", count: score))")
                    .foregroundColor(.white)
                    .font(.headline)

                Spacer()
            }

            ForEach(1..<7) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: isPulsing ? 30 : 20, height: isPulsing ? 30 : 20)
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
