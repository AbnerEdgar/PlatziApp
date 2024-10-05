//
//  MainCoordinator.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//
import Foundation
import SwiftUI

protocol Coordinator {
    var path: NavigationPath { get set }
    func start() -> AnyView
}

class MainCoordinator: ObservableObject {
    @Published var path = NavigationPath()

    @Published var homeCoordinator: HomeCoordinator
    @Published var searchCoordinator: SearchCoordinator
    @Published var profileCoordinator: ProfileCoordinator
    @Published var categoriesCoordinator: CategoriesCoordinator
    @Published var cartCoordinator: CartCoordinator
    init() {
        homeCoordinator = HomeCoordinator()
        searchCoordinator = SearchCoordinator()
        profileCoordinator = ProfileCoordinator()
        categoriesCoordinator = CategoriesCoordinator()
        cartCoordinator = CartCoordinator()
    }
}

extension MainCoordinator: Coordinator {
    func start() -> AnyView {
        return AnyView(MainTabBarView(coordinator: self))
    }

    func makeHomeView() -> some View {
        //        let viewModel = HomeViewModel()
        return HomeView(coordinator: homeCoordinator)
    }

    func makeSearchView() -> some View {
        //        let viewModel = SearchViewModel()
        return SearchView(coordinator: searchCoordinator)
    }

    func makeCategoriesView() -> some View {
        //        let viewModel = CategoriesViewModel()
        return CategoriesView(coordinator: categoriesCoordinator)
    }

    func makeCartView() -> some View {
        //        let viewModel = CartViewModel()
        return CartView(coordinator: cartCoordinator)
    }

    func makeProfileView() -> some View {
        //        let viewModel = ProfileViewModel()
        return ProfileView(coordinator: profileCoordinator)
    }
}

enum Route: Hashable {
    case productDetail(productId: Int)
}
