//
//  AudioPlayer.swift
//  ClewTwo
//
//  Created by Evelyn on 3/21/23.
//

import Foundation
import AVFoundation

class AudioPlayer: ObservableObject {
    var player = AVAudioPlayer()
    var feedbackTimer: Timer?
    
    init(name: String, type: String, volume: Float = 1) {
        if let url = Bundle.main.url(forResource: name, withExtension: type) {
            print("success getting audio file: \(name)")
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.setVolume(volume, fadeDuration: 0)
            } catch {
                print("error getting audio: \(error.localizedDescription)")
            }
        }
    }
    
    func goLeft() {
        player.numberOfLoops = 2
        player.play()
    }
    
    func goRight() {
        player.numberOfLoops = 3
        player.play()
    }
    
    func gettingCloser() {
        player.numberOfLoops = 10000
        player.volume = 1.0
        player.play()
        let startTime = Date()
        feedbackTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            let elapsed = -startTime.timeIntervalSinceNow
            print("elapsed \(elapsed)")
            self.player.setVolume(Float(max(0.0, 1.0-elapsed/2.0)), fadeDuration: 0)
        }
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.player.setVolume(0.5, fadeDuration: 0)
//        }
//
//        volume = 0.1
//
//        while volume < 1 {
//            player.play()
//            volume += 0.05
//
//        }
    }
}
