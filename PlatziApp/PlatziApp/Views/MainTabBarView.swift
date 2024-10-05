//
//  MainTabBar.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import SwiftUI

struct MainTabBarView: View {
    @ObservedObject var coordinator: MainCoordinator
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack(path: $coordinator.homeCoordinator.path) {
                coordinator.homeCoordinator.start()
            }
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            NavigationStack(path: $coordinator.searchCoordinator.path) {
                coordinator.searchCoordinator.start()
            }
            .tabItem {
                Label("Search", systemImage: Icons.search)
            }
            NavigationStack(path: $coordinator.categoriesCoordinator.path) {
                coordinator.categoriesCoordinator.start()
            }
            .tabItem {
                Label("Categories", systemImage: Icons.categories)
            }
            NavigationStack(path: $coordinator.cartCoordinator.path) {
                coordinator.cartCoordinator.start()
            }
            .tabItem {
                Label("Cart", systemImage: Icons.cart)
                    .badge(4)
            }
            NavigationStack(path: $coordinator.profileCoordinator.path) {
                coordinator.profileCoordinator.start()
            }
            .tabItem {
                Label("Profile", systemImage: Icons.profile)
            }
        }
        .accentColor(
            Color.primaryColor
        )
    }
}
