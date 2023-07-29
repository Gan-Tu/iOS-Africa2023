//
//  CreditsView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/29/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("Copyright © Gan Tu\nAll rights reserved\nBetter Apps ♡ Less Code")
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
