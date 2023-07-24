//
//  VideoPlayerView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/24/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoFileName: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoFileName, fileFormat: "mp4"))
            .overlay(alignment: .topLeading, content: {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
            })
        }
        .tint(.accent)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoFileName: "lion", videoTitle: "Lion")
    }
}
