//
//  InsetMapView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/20/23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing) {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(Color.black.opacity(0.4).cornerRadius(8))
                }
                .padding(12)
            }
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
}

