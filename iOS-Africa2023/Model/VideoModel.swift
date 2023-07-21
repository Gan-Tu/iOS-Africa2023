//
//  VideoModel.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/20/23.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
