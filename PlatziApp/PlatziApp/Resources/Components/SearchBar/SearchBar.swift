//
//  SearchBar.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//
import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var placeholder: String = "Search products, brands..."
    var backgroundColor: Color = Color.neutralGrayLight
    var cornerRadius: CGFloat = CornerRadius.small
    var onCommit: (() -> Void)? = nil
    @FocusState private var isFocused: Bool
    var body: some View {
        HStack {
            Image(systemName: Icon.magnifyingglass)
            TextField(
                placeholder, text: $searchText,
                onCommit: {
                    onCommit?()
                    isFocused = false
                })
            Spacer()
            if !searchText.isEmpty {
                Button(action: {
                    searchText = ""
                }) {
                    Image(systemName: Icon.xmark)
                        .foregroundColor(Color.neutralGrayMedium)
                }
            }
        }
        .padding(Spacing.medium)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .onTapGesture {
            isFocused = true
        }
    }
}
