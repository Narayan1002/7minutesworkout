//
//  VideoPlayerView.swift
//  Africa
//
//  Created by narayan sharma on 14/01/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSeleted: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSeleted, fileFormat: "mp4"))
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                    .frame(width: 32, height: 32)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSeleted: "Lion", videoTitle: "Lion")
        }
    }
}
