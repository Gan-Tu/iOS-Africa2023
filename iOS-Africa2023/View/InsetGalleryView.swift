//
//  InsetGalleryView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/18/23.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15) {
                ForEach(0..<animal.gallery.count, id: \.self) { item in
                    Image(animal.gallery[item])
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetGalleryView(animal: animals[3])
        .padding()
}
