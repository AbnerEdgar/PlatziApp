//
//  SecondaryButton.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import SwiftUI

struct SecondaryButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.body)
                .foregroundColor(.primaryColor)
                .padding()
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.primaryColor, lineWidth: 2)
                )
        }
    }
}
