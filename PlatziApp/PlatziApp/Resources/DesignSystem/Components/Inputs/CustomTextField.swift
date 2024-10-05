//
//  CustomTextField.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//
import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String

    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background(Color.neutralGrayLight)
            .cornerRadius(8)
    }
}
