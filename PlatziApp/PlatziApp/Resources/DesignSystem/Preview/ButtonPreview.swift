//
//  ButtonPreview.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//

import SwiftUI

struct ButtonPreview: View {
    var body: some View {
        VStack(spacing: 16) {
            PrimaryButton(title: "Primary Button") {}
            SecondaryButton(title: "Secondary Button") {}
        }
        .padding()
    }
}

#Preview {
    ButtonPreview()
}
