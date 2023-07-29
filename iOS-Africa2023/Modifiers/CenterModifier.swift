//
//  CenterModifier.swift
//  iOS-Africa2023
//
//  Created by Gan Tu on 7/29/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
