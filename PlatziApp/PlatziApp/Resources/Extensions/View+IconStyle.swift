//
//  View+IconStyle.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//
import SwiftUI

extension View {
    func iconStyle(size: CGFloat, weight: Font.Weight = .regular, color: Color = .primary)
        -> some View
    {
        self
            .font(.system(size: size, weight: weight))
            .foregroundColor(color)
    }
}
