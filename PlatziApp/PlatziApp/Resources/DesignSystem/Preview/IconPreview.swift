//
//  IconPreview.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//

import SwiftUI

struct IconPreview: View {
    let icons: [(name: String, symbolName: String)] = [
        ("Home", Icon.home),
        ("Search", Icon.search),
        ("Categories", Icon.categories),
        ("Cart", Icon.cart),
        ("Profile", Icon.profile),
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(icons, id: \.name) { icon in
                HStack(spacing: 16) {
                    Image(systemName: icon.symbolName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.primaryColor)
                    Text(icon.name)
                        .font(.body)
                        .foregroundColor(.textColor)
                }
            }
        }
        .padding()
    }
}

#Preview {
    IconPreview()
}
