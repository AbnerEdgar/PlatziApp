//
//  IconCard.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//
import SwiftUI

struct IconCard: View {
    let iconImage: String
    let iconTitle: String
    var color: Color
    var body: some View {
        VStack(spacing: Spacing.large) {
            Image(systemName: iconImage)
                .foregroundColor(color)
                .iconStyle(size: IconSize.medium)
            Text(iconTitle)
                .font(.caption)
        }
        .frame(width: 100, height: 100)
        .padding(Spacing.small)
        .background(color.opacity(0.2))
        .cornerRadius(CornerRadius.medium)
        .shadow(color: color.opacity(0.3), radius: 3, x: 2, y: 2)
    }
}
