//
//  VIdeoListView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/18/23.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(
                        destination:
                            VideoPlayerView(videoFileName: video.id,
                                            videoTitle: video.name)) {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .padding(.horizontal, -4)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                })
            }
        }
    }
}

#Preview {
    VideoListView()
}
