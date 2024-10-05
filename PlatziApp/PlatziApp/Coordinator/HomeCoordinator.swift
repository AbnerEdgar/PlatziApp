//
//  HomeCoordinator.swift
//  PlatziApp
//
//  Created by Abner Edgar on 04/10/24.
//
import Foundation
import SwiftUI

class HomeCoordinator: ObservableObject {
    @Published var selectedProduct: Product?
    @Published var path = NavigationPath()

    func start() -> some View {
        HomeView(coordinator: self)
    }

    func showProductDetail(for product: Product) {
        selectedProduct = product
    }
}
