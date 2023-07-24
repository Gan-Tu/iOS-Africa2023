//
//  MapAnnotationView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/24/23.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.accent)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: false), {
                animation = 1
            })
        }
    }
}

#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    return MapAnnotationView(location: locations[0])
}
