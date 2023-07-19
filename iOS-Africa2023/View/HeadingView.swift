//
//  HeadingView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/18/23.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeadingView(
        headingImage: "photo.on.rectangle.angled",
        headingText: "Wilderness in Pictures"
    )
}
