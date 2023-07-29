//
//  AnimalGridItemView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/29/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal

    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return AnimalGridItemView(animal: animals[0])
}
