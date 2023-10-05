//
//  Audio.swift
//  Basic Nav View
//
//  Created by Clarissa Pace on 10/5/23.
//


import SwiftUI
import AVFoundation


let urlSounds = [
    "bbc-birds-1 copy",
"bbc-birds-2- copy",
    "scale-1 copy"
]

// Load an audio file from a URL and return a AVAudioPlayer for it
func loadUrlAudio(_ urlString:String) -> AVAudioPlayer? {
    let url = URL(string: urlString)
    do {
        let data = try Data(contentsOf: url!)
        return try AVAudioPlayer(data: data)
    } catch {
        print("loadUrlSound error", error)
    }
    return nil
}

struct PlayAudioUrlView: View {
    @State private var soundIndex = 0
    @State private var soundFile = urlSounds[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
            VStack {
                HStack {
                    Button("Play") {
                        print("Button Play")
                        player = loadUrlAudio(soundFile)
                        print("player", player as Any)
                        // Loop indefinitely
                        player?.numberOfLoops = -1
                        player?.play()
                    }
                    Button("Stop") {
                        print("Button Stop")
                        player?.stop()
                    }
                    Button("Next") {
                        soundIndex = (soundIndex+1) % urlSounds.count
                        soundFile = urlSounds[soundIndex]
                    }
                }
                Text("soundIndex \(soundIndex)")
                Text(soundFile)
                if let player = player {
                    Text("duration " + String(format: "%.1f", player.duration))
                    Text("currentTime " + String(format: "%.1f", player.currentTime))
                }
            }
        }
    }
}

struct Audio_Previews: PreviewProvider {
    static var previews: some View {
        PlayAudioUrlView()
    }
}


// Source for audio clips
// https://www.youraccompanist.com/free-scales-and-warm-ups/reference-scales
// Reference Scales_On A Flat-G Sharp.mp3
// https://sound-effects.bbcrewind.co.uk/search?cat=Animals
