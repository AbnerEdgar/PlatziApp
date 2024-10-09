//
//  ProductCard.swift
//  PlatziApp
//
//  Created by Abner Edgar on 06/10/24.
//

import SwiftUI

struct ProductCard: View {
    let itemImage: String
    let itemName: String
    let itemPrice: Float
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: itemImage)) { phase in
                switch phase {
                case .failure:
                    Image(systemName: Icon.noImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                        .cornerRadius(CornerRadius.medium, corners: [.topLeft, .topRight])
                default:
                    ProgressView()
                        .frame(width: 160, height: 160)
                }
            }
            Text(itemName)
                .font(.headline)
                .foregroundColor(.textColor)
                .padding(.top, Spacing.small)
                .padding(.leading, Spacing.small)
                .lineLimit(1)
            Text(itemPrice, format: .currency(code: "USD"))
                .font(.subheadline)
                .foregroundColor(Color.accentColor)
                .padding(.top, Spacing.x_small)
                .padding(.leading, Spacing.small)
            HStack {
                Button {

                } label: {
                    Spacer()
                    Image(systemName: Icon.addCart)
                        .iconStyle(
                            size: IconSize.medium,
                            color: Color.accentColor
                        )
                        .padding(Spacing.small)
                        .background(Circle().fill(Color.neutralGrayLight.opacity(0.3)))
                        .padding(.trailing, Spacing.small)
                }
            }
        }
        .frame(width: 160, height: 270)
        .background(Color.backgroundColor)
        .cornerRadius(CornerRadius.medium)
        .shadow(color: Color.black.opacity(0.1), radius: 5)
    }
}
