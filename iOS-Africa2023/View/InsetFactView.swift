//
//  InsetFactView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/20/23.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 140, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetFactView(animal: animals[5])
}
