//
//  CarouselItemView.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//
import SwiftUI

struct CarouselItemsView: View {
    let images: [Color]
    var carouselHeight: CGFloat
    var cornerRadius: CGFloat
    @Binding var dragOffset: CGFloat
    @Binding var isChanging: Bool
    @Binding var currentIndex: Int
    var imageOffset: CGFloat

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: Spacing.medium) {
                ForEach(images.indices, id: \.self) { index in
                    images[index]
                        .frame(width: geometry.size.width, height: carouselHeight)
                        .clipped()
                        .cornerRadius(cornerRadius)
                        .shadow(color: Color.black.opacity(0.1), radius: 5)
                        .animation(.easeInOut(duration: 0.2), value: isChanging)
                }
            }
            .offset(x: dragOffset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        isChanging = true
                        dragOffset =
                            value.translation.width
                            + (-CGFloat(currentIndex) * (geometry.size.width + imageOffset))
                    }
                    .onEnded { value in
                        handleGestureEnd(value: value, geometry: geometry)
                    }
            )
            .onChange(of: currentIndex) {
                withAnimation(.easeInOut) {
                    dragOffset = -CGFloat(currentIndex) * (geometry.size.width + Spacing.medium)
                }
            }
        }
        .frame(height: carouselHeight)
    }

    // Gesture end handler
    private func handleGestureEnd(value: DragGesture.Value, geometry: GeometryProxy) {
        let threshold: CGFloat = 50

        withAnimation(.easeInOut) {
            if value.translation.width < -threshold && currentIndex < images.count - 1 {
                currentIndex += 1
            }
            if value.translation.width > threshold && currentIndex > 0 {
                currentIndex -= 1
            }
            if isChanging {
                dragOffset = -CGFloat(currentIndex) * (geometry.size.width + Spacing.medium)
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 0.5
                ) {
                    isChanging = false
                }
            }
        }
    }
}
