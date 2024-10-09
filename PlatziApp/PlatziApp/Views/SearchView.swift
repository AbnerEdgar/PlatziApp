//
//  SearchView.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var coordinator: SearchCoordinator
    @State private var searchText: String = ""
    var body: some View {
        SearchBar(searchText: $searchText)
    }
}
