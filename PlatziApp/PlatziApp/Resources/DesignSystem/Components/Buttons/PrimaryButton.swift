//
//  PrimaryButotn.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//
import SwiftUI

struct PrimaryButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.body)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.primaryColor)
                .cornerRadius(8)
        }
    }
}
