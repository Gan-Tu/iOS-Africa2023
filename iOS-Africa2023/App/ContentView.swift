//
//  ContentView.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    let gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)

    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal), label: {
                                AnimalListItemView(animal: animal)
                            }) //: LINK
                        } //: LOOP
                    } //: LIST
                    .listStyle(.plain)
                } else {
                    ScrollView(.vertical) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20, content: {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }
                            }
                        })
                        .padding(10)
                    }
                } //: CONDITION
            } //: GROUP
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    HStack(spacing: 16) {
                        Button(action: {
                            withAnimation(.easeIn) {
                                isGridViewActive.toggle()
                                haptics.impactOccurred()
                            }
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        } //: BUTTON
                        
                        Button(action: {
                            withAnimation(.easeIn) {
                                isGridViewActive.toggle()
                                haptics.impactOccurred()
                            }
                        }) {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        } //: BUTTON
                    } //: HSTACK
                })
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
