//
//  PlatziAppApp.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import SwiftUI

@main
struct PlatziApp: App {
    @StateObject private var mainCoordinator = MainCoordinator()
    var body: some Scene {
        WindowGroup {
            mainCoordinator.start()
        }
    }
}
