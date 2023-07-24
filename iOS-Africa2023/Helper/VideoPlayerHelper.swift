//
//  VideoPlayerHelper.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/24/23.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String, autoPlay: Bool = true) -> AVPlayer? {
    guard let videoURL = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        return nil
    }
    videoPlayer = AVPlayer(url: videoURL)
    if autoPlay {
        videoPlayer?.play()
    }
    return videoPlayer
}
