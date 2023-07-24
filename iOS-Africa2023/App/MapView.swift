//
//  MapView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/18/23.
//

import SwiftUI
import MapKit

struct MapView: View {

    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations,
            annotationContent: { item in
            // Option A: Pin
            // MapPin(coordinate: item.location, tint: .accent)
            
            // Option B: Marker
            // MapMarker(coordinate: item.location, tint: .accent)
            
            // Option C: Custom Logo
            // MapAnnotation(coordinate: item.location, content: {
            //     Image("logo")
            //         .resizable()
            //         .scaledToFit()
            //         .frame(width: 32, height: 32, alignment: .center)
            // })
            
            // Option D: Custom View
            MapAnnotation(coordinate: item.location, content: {
                MapAnnotationView(location: item)
            })
        })
        .overlay(alignment: .top) {
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(Color.white)
                    }
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color.black.cornerRadius(8).opacity(0.6))
            .padding()
        }
    }
}

#Preview {
    MapView()
}
