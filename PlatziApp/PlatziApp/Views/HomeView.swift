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
        VStack(spacing: Spacing.medium) {
            Text("Welcome to Home")
                .font(.title)
                .foregroundColor(.textColor)

            PrimaryButton(
                title: "Get Started",
                action: {
                    // Button action here
                })
        }
        .padding(Spacing.large)
    }
}
