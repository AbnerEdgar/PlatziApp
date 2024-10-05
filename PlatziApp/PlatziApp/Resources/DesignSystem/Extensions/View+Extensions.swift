//
//  View+Extensions.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//
import SwiftUI

extension View {
    func primaryButtonStyle() -> some View {
        self
            .padding()
            .background(Color.primaryColor)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
