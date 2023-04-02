//
//  AudioPlayerTestView.swift
//  ClewTwo
//
//  Created by Evelyn on 3/21/23.
//

import SwiftUI

struct AudioPlayerTestView: View {
    @ObservedObject var player = AudioPlayer(name: "beep", type: "wav")
    
    var body: some View {
        Button(action: {
            self.player.gettingCloser()
        }) {
            Text("Getting Closer")
        }
        Button(action: {
            self.player.goLeft()
        }) {
            Text("Go Left")
        }
        Button(action: {
            self.player.goRight()
        }) {
            Text("Go Right")
        }
    }
}

struct AudioPlayerTestView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerTestView()
    }
}
