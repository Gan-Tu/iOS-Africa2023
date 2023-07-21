//
//  ExternalWebLinkView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/20/23.
//

import SwiftUI

struct ExternalWebLinkView: View {
    var animal: Animal
    
    var body: some View {
        GroupBox() {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.link, destination: URL(string: animal.link)!)
                        .lineLimit(1)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accent)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return ExternalWebLinkView(animal: animals[0])
}
