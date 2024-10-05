//
//  TypographyPreview.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//
import SwiftUI

struct TypographyPreview: View {
    let text = "Sample Text"

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(text).font(.largeTitle).foregroundColor(.textColor)
            Text(text).font(.title).foregroundColor(.textColor)
            Text(text).font(.headline).foregroundColor(.textColor)
            Text(text).font(.body).foregroundColor(.textColor)
            Text(text).font(.caption).foregroundColor(.textColor)
        }
        .padding()
    }
}

#Preview {
    TypographyPreview()
}
