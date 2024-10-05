//
//  SpacingPreview.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//
import SwiftUI

struct SpacingPreview: View {
    let spacings: [(name: String, value: CGFloat)] = [
        ("Small", 8),
        ("Medium", 16),
        ("Large", 24),
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(spacings, id: \.name) { item in
                HStack {
                    Text(item.name)
                        .font(.headline)
                    Rectangle()
                        .fill(Color.neutralGrayMedium)
                        .frame(height: item.value)
                }
            }
        }
        .padding()
    }
}

#Preview {
    SpacingPreview()
}
