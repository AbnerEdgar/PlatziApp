//
//  CategoriesCoordinator.swift
//  PlatziApp
//
//  Created by Abner Edgar on 05/10/24.
//
import Foundation
import SwiftUI

class CategoriesCoordinator: ObservableObject {
    @Published var path = NavigationPath()

    func start() -> some View {
        CategoriesView(coordinator: self)
    }
}
