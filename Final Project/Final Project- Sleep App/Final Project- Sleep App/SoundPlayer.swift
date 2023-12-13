//
//  SoundPlayer.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.
// Reference: App Storage Demo, AVAudio Player Demo

import Foundation
import AVFoundation
class SoundPlayer {
    var player: AVAudioPlayer?
    var currentlyPlaying: String?

    func playOrStopSound(named soundName: String) {

        if soundName == currentlyPlaying {
            player?.stop()
            currentlyPlaying = nil
            return
        }

        
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else { return }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            currentlyPlaying = soundName
        } catch {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}
