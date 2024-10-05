//
//  SwiftUIView.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//

import SwiftUI

struct ColorPreview: View {
    let colors: [(name: String, color: Color)] = [
        ("Primary", .primaryColor),
        ("Secondary", .secondaryColor),
        ("Accent", .accentColor),
        ("Background", .backgroundColor),
        ("Text", .textColor),
        ("Neutral Light", .neutralGrayLight),
        ("Neutral Medium", .neutralGrayMedium),
        ("Neutral Dark", .neutralGrayDark),
    ]

    var body: some View {
        VStack(spacing: 16) {
            ForEach(colors, id: \.name) { item in
                HStack {
                    Text(item.name)
                        .foregroundColor(.white)
                        .padding()
                        .background(item.color)
                        .cornerRadius(8)

                    Spacer()
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
}

#Preview {
    ColorPreview()
}
