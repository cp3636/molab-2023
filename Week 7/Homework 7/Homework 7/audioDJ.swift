//
//  audioDJ.swift
//  Homework 7
//
//  Created by Clarissa Pace on 10/25/23.
//
//
//import Foundation
//
//import AVFoundation
//
//class AudioDJ: ObservableObject {
//    @Published var soundIndex = 0
//    @Published var soundFile = audioRef[0]
//    @Published var player: AVAudioPlayer? = nil
//    
//    // class must have initializer
//    init() {
//        print("AudioDJ init")
//    }
//    
//    func play() {
//        player = loadAudio(soundFile)
//        print("AudioDJ player", player as Any)
//        // Loop indefinitely
//        player?.numberOfLoops = -1
//        player?.play()
//    }
//    
//    func stop() {
//        player?.stop()
//    }
//    
//    func next() {
//        choose(soundIndex+1)
//    }
//    
//    func choose(_ index:Int) {
//        soundIndex = (index) % AudioDJ.audioRef.count
//        soundFile = AudioDJ.audioRef[soundIndex]
//    }
//    
//    func loadAudio(_ str:String) -> AVAudioPlayer? {
//        if (str.hasPrefix("https://")) {
//            return loadUrlAudio(str)
//        }
//        return loadBundleAudio(str)
//    }
//    
//    func loadUrlAudio(_ urlString:String) -> AVAudioPlayer? {
//        let url = URL(string: urlString)
//        do {
//            let data = try Data(contentsOf: url!)
//            return try AVAudioPlayer(data: data)
//        } catch {
//            print("loadUrlSound error", error)
//        }
//        return nil
//    }
//    
//    func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
//        let path = Bundle.main.path(forResource: fileName, ofType:nil)!
//        let url = URL(fileURLWithPath: path)
//        do {
//            return try AVAudioPlayer(contentsOf: url)
//        } catch {
//            print("loadBundleAudio error", error)
//        }
//        return nil
//    }
//    
//    static let audioRef = [
//        "CowStory"
//    ]
//    
//}
