//
//  HomeView.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var coordinator: HomeCoordinator
    var body: some View {
        ScrollView {
            VStack(spacing: Spacing.medium) {
                HStack(alignment: .center, spacing: Spacing.medium) {
                    //                    Image("AppIcon")
                    //                        .resizable()
                    //                        .scaledToFit()
                    //                        .frame(width: 20, height: 20)
                    HStack {
                        Text("Today")
                            .font(.largeTitle)
                            .foregroundColor(.textColor)
                        Text("9 October")
                            .font(.title2)
                            .foregroundColor(.neutralGrayMedium)
                            .bold()
                    }
                    Spacer()
                    Image(systemName: Icon.bell)
                        .iconStyle(
                            size: IconSize.small,
                            color: Color.textColor)
                }
                .padding(.horizontal, Spacing.large)

                HStack {
                    Text("Deals and Offers")
                        .font(.title2)
                        .foregroundColor(.textColor)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal, Spacing.medium)
                //Carousel
                CarouselView(
                    carouselHeight: 200,
                    cornerRadius: CornerRadius.medium
                )
                .padding(.horizontal, Spacing.medium)

                //                ScrollView(.horizontal, showsIndicators: false) {
                //                    LazyHGrid(rows: [GridItem(), GridItem()]) {
                //                        IconCard(iconImage: "flame.fill", iconTitle: "Trending Now", color: .orange)
                //                        IconCard(
                //                            iconImage: "clock.arrow.circlepath", iconTitle: "Limited Time Offers",
                //                            color: .purple)
                //                        IconCard(
                //                            iconImage: "person.fill.checkmark", iconTitle: "Staff Picks",
                //                            color: .blue)
                //                        IconCard(
                //                            iconImage: "leaf.fill", iconTitle: "Seasonal Favorites", color: .green)
                //                        IconCard(iconImage: "star.fill", iconTitle: "Top Rated", color: .yellow)
                //                        IconCard(
                //                            iconImage: "pencil.circle.fill", iconTitle: "Editor's Choice",
                //                            color: .indigo)
                //                        IconCard(
                //                            iconImage: "heart.fill", iconTitle: "Customer Favorites", color: .red)
                //                        IconCard(iconImage: "sparkles", iconTitle: "New Arrivals", color: .cyan)
                //                        // Add remaining categories as needed
                //                    }
                //                    .offset(x: Spacing.medium)
                //                }

                HStack {
                    Text("Featured Products")
                        .font(.title2)
                        .foregroundColor(.textColor)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal, Spacing.medium)

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Product.clothingItems()) { product in
                            ProductCard(
                                itemImage: product.image,
                                itemName: product.title,
                                itemPrice: product.price
                            )
                        }
                    }
                    .offset(x: Spacing.medium)
                }
                .frame(height: 270)

                HStack {
                    Text("Personalized Recommendations")
                        .font(.title2)
                        .foregroundColor(.textColor)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal, Spacing.medium)

                LazyVGrid(
                    columns: [
                        GridItem(),
                        GridItem(),
                    ],
                    alignment: .center,
                    spacing: Spacing.medium
                ) {
                    ProductCard(
                        itemImage: "https://imgur.com/QkIa5tT.jpeg",
                        itemName: "Majestic T-Shirt",
                        itemPrice: 44)
                    ProductCard(
                        itemImage: "https://imgur.com/1twoaDy.jpeg",
                        itemName: "Classic Red Hoodie",
                        itemPrice: 12.3)
                    ProductCard(
                        itemImage: "https://i.imgur.com/cHddUCu.jpeg",
                        itemName: "Classic Gray Hoodie",
                        itemPrice: 12.3)
                    ProductCard(
                        itemImage: "https://i.imgur.com/cHddUCu.jpeg",
                        itemName: "Classic Gray Hoodie",
                        itemPrice: 12.3)
                    ProductCard(
                        itemImage: "https://i.imgur.com/cHddUCu.jpeg",
                        itemName: "Classic Gray Hoodie",
                        itemPrice: 12.3)
                }
                .padding(.horizontal, Spacing.medium)

                Spacer()

            }
        }
        .onAppear {
            //            APIService.shared.fetchData(endpoint: ProductEndpoint.getAll) {
            //                (result: Result<[Product], Error>) in
            //            }
        }
    }
}
