//
//  VideoListItem.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/20/23.
//

import SwiftUI

struct VideoListItemView: View {
    let video: Video

    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(8)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            })
        }
    }
}

#Preview {
    let videos: [Video] = Bundle.main.decode("videos.json")
    return VStack(alignment: .leading, spacing: 20) {
        VideoListItemView(video: videos[0])
        VideoListItemView(video: videos[1])
        VideoListItemView(video: videos[2])
    }
}
