//
//  playAudio.swift
//  Homework 7
//
//  Created by Clarissa Pace on 10/25/23.
//
//
//import Foundation
//import SwiftUI
//
//// Define AudioDJ class
//class AudioDJ: ObservableObject {
//    // Implement audio playback functionality here
//    // For example, you can use AVAudioPlayer or any other audio library.
//}
//
//struct SlideView: View {
//    let name: String
//    // Implement your SlideView here
//    // This view should display an image based on the 'name' parameter.
//}
//
//struct PlayPauseView: View {
//    @State var slideIndex = 0
//    @State var isPlaying = false
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//
//    @EnvironmentObject var audioDJ: AudioDJ
//    var slides: [String] = ["cow1", "cow2", "cow3", "cow4", "cow5", "cow6"]
//
//    var body: some View {
//        VStack {
//            Text("Play Pause Slides")
//                .font(Font.system(size: 30, weight: .bold))
//                .padding()
//            
//            let name = slides[slideIndex]
//            SlideView(name: name)
//            
//            HStack {
//                Button(action: previousItemAction) {
//                    Image(systemName: "chevron.left")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                }
//                .padding()
//                
//                Spacer()
//                
//                Button(action: playPauseAction) {
//                    Image(systemName: isPlaying ? "pause" : "play")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                }
//                
//                Spacer()
//                
//                Button(action: nextItemAction) {
//                    Image(systemName: "chevron.right")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                }
//                .padding()
//            }
//        }
//        .onReceive(timer) { _ in
//            if isPlaying {
//                nextItemAction()
//            }
//        }
//    }
//    
//    func playPauseAction() {
//        isPlaying.toggle()
//        if isPlaying {
//            audioDJ.play() // Start audio playback
//        } else {
//            audioDJ.stop() // Stop audio playback
//        }
//    }
//    
//    func previousItemAction() {
//        slideIndex = (slideIndex - 1 + slides.count) % slides.count
//    }
//    
//    func nextItemAction() {
//        slideIndex = (slideIndex + 1) % slides.count
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            // Add CountSheep as a tab
//            CountSheep()
//                .tabItem {
//                    Image(systemName: "moon.fill")
//                    Text("Count Sheep")
//                }
//            // Add PlayPauseView as a tab
//            PlayPauseView()
//                .tabItem {
//                    Image(systemName: "photo.on.rectangle.angled")
//                    Text("Slide Show")
//                }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .environmentObject(AudioDJ())
//    }
//}
