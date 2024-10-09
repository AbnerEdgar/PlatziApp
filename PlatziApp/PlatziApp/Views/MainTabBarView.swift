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
                Label("Home", systemImage: Icon.home)
            }
            .tag(0)
            NavigationStack(path: $coordinator.searchCoordinator.path) {
                coordinator.searchCoordinator.start()
            }
            .tabItem {
                Label("Search", systemImage: Icon.search)
            }
            .tag(1)
            NavigationStack(path: $coordinator.categoriesCoordinator.path) {
                coordinator.categoriesCoordinator.start()
            }
            .tabItem {
                Label("Categories", systemImage: Icon.categories)
            }
            .tag(2)
            NavigationStack(path: $coordinator.cartCoordinator.path) {
                coordinator.cartCoordinator.start()
            }
            .tabItem {
                Label("Cart", systemImage: Icon.cart)
                    .badge(4)
            }
            .tag(3)
            NavigationStack(path: $coordinator.profileCoordinator.path) {
                coordinator.profileCoordinator.start()
            }
            .tabItem {
                Label("Profile", systemImage: Icon.profile)
            }
            .tag(4)
        }
        .accentColor(Color.accentColor)
    }
}
