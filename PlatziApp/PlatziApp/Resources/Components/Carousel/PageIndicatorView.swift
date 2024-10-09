//
//  Indicator.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//
import SwiftUI

struct PageIndicatorView: View {
    let totalIndex: Int
    @Binding var currentIndex: Int

    var body: some View {
        HStack(spacing: Spacing.small) {
            ForEach(0..<totalIndex, id: \.self) { index in
                Button {
                    currentIndex = index
                } label: {
                    Circle()
                        .fill(index == currentIndex ? Color.primaryColor : Color.neutralGrayLight)
                        .frame(width: 8, height: 8)
                }
            }
        }
    }
}
