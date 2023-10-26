//
//  Count Sheep.swift
//  Homework 7
//
//  Created by Clarissa Pace on 10/25/23.
//

import SwiftUI
import AVKit

struct CountSheep: View {
    @AppStorage("username") var username: String = "Anonymous"
    @AppStorage("score") var score: Int = 0
    @State private var isPulsing = false

    let imageNames = ["cow1", "cow2", "cow3", "cow4", "cow5", "cow6"]

    @State private var currentIndex = 0


    @State private var audioPlayer: AVAudioPlayer?

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

                Text("Can't sleep? Count cows!")
                    .foregroundColor(.white)
                    .font(.title)

                HStack {
                    Button("+ Cow") {
                        score += 1
                        playCowSound() // Play the cow sound
                    }
                    Button("- Cow") {
                        if score > 0 {
                            score -= 1
                            playCowSound() // Play the cow sound
                        }
                    }
                }
                .padding(.bottom, 20)

                Text("Cow Count: \(String(repeating: "🐄", count: score))")
                    .foregroundColor(.white)
                    .font(.headline)

                Spacer()

                TabView(selection: $currentIndex) {
                    ForEach(0..<imageNames.count, id: \.self) { index in
                        Image(imageNames[index])
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .padding(10)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .frame(height: 220)
            }

            ForEach(1..<7) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: isPulsing ? 30 : 20, height: isPulsing ? 30 : 20)
                    .foregroundColor(.white)
                    .position(x: CGFloat.random(in: 30...400), y: CGFloat.random(in: 30...170))
            }
        }
    }

  
    func playCowSound() {
        if let audioURL = Bundle.main.url(forResource: "CowStory", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayer?.play()
            } catch {
                print("Error playing cow sound: \(error.localizedDescription)")
            }
        }
    }
}

struct CountSheep_Previews: PreviewProvider {
    static var previews: some View {
        CountSheep()
    }
}

