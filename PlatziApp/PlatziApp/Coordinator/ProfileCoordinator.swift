//
//  ProfileCoordinator.swift
//  PlatziApp
//
//  Created by Abner Edgar on 05/10/24.
//
import Foundation
import SwiftUI

class ProfileCoordinator: ObservableObject {
    @Published var path = NavigationPath()

    func start() -> some View {
        ProfileView(coordinator: self)
    }
}
