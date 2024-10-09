//
//  carousel.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//
import SwiftUI

struct CarouselView: View {
    enum Indicator {
        case stack
        case outside
        case noIndicator
    }

    // MARK: - Properties
    let images = [Color.blue, Color.green, Color.red]
    let imageOffset: CGFloat = 20
    var carouselHeight: CGFloat = 250
    var pageIndicator: Indicator = .outside
    var cornerRadius: CGFloat = CornerRadius.small

    @State private var currentIndex = 0
    @State private var isChanging = false
    @State var dragOffset: CGFloat = 0

    // MARK: - Body
    var body: some View {
        VStack {
            CarouselItemsView(
                images: images,
                carouselHeight: carouselHeight,
                cornerRadius: cornerRadius,
                dragOffset: $dragOffset,
                isChanging: $isChanging,
                currentIndex: $currentIndex,
                imageOffset: imageOffset
            )
            .overlay {
                if pageIndicator == .stack {
                    PageIndicatorView(
                        totalIndex: images.count,
                        currentIndex: $currentIndex
                    )
                    .offset(y: carouselHeight * 0.40)
                }
            }

            if pageIndicator == .outside {
                PageIndicatorView(
                    totalIndex: images.count,
                    currentIndex: $currentIndex)
            }
        }
    }
}
