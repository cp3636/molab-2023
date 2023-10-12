//
//  Songs.swift
//  Homework4

import SwiftUI
import AVFoundation

let localAudioFiles = [
    "Snore",
    "Bark",
]

// Load an audio file from the app bundle and return an AVAudioPlayer for it
func loadLocalAudio(_ fileName: String) -> AVAudioPlayer? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "mp3") {
        do {
            return try AVAudioPlayer(contentsOf: url)
        } catch {
            print("loadLocalAudio error", error)
        }
    } else {
        print("Audio file not found: \(fileName)")
    }
    return nil
}

struct Dog: View {
    @State private var audioIndex = 0
    @State private var audioFile = localAudioFiles[0]
    @State private var player: AVAudioPlayer? = nil

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "play.circle")
                //Apple's SF Symbols icon set
                    .resizable()
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        print("Button Play")
                        player = loadLocalAudio(audioFile)
                        if let player = player {
                            print("Loaded audio file: \(audioFile)")
                            //LOOP
                            player.numberOfLoops = -1
                            player.play()
                        } else {
                            print("Failed to load audio file: \(audioFile)")
                        }
                    }

                Image(systemName: "stop.circle")
                //Apple's SF Symbols icon set
                    .resizable()
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        print("Button Stop")
                        player?.stop()
                    }

                Image(systemName: "forward.end.circle")
                //Apple's SF Symbols icon set
                    .resizable()
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        audioIndex = (audioIndex + 1) % localAudioFiles.count
                        audioFile = localAudioFiles[audioIndex]
                    }
            }
            Text("Dog Sound: \(audioFile)")

            if let player = player {
                Text("Duration: " + String(format: "%.1f", player.duration))
                Text("Current Time: " + String(format: "%.1f", player.currentTime))
            }
        }
    }
}

struct Sound_Previews: PreviewProvider {
    static var previews: some View {
        Dog()
    }
}
