import SwiftUI
import AVFoundation

let Sounds = [
    "mr. rager",
    "popular",
    "world",
]

func Audio(_ fileName: String) -> AVAudioPlayer? {
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

struct Songs: View {
    @State private var soundIndex = 0
    @State private var soundFile = Sounds[0]
    @State private var player: AVAudioPlayer? = nil

    var body: some View {
        VStack {
            HStack {
                Button("Play") {
                    print("Button Play")
                    player = Audio(soundFile)
                    if let player = player {
                        print("Loaded audio file: \(soundFile)")
                        player.numberOfLoops = -1
                        player.play()
                    } else {
                        print("Failed to load audio file: \(soundFile)")
                    }
                }
                Button("Stop") {
                    print("Button Stop")
                    player?.stop()
                }
                Button("Next") {
                    soundIndex = (soundIndex + 1) % Sounds.count
                    soundFile = Sounds[soundIndex]
                }
            }
            Text(soundFile)
            if let player = player {
                Text("Duration: " + String(format: "%.1f", player.duration))
                Text("Current Time: " + String(format: "%.1f", player.currentTime))
            }
        }
    }
}

struct Songs_Previews: PreviewProvider {
    static var previews: some View {
        Songs()
    }
}
