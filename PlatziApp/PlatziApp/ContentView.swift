//
//  ContentView.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            APIService.shared.fetchData(endpoint: ProductEndpoint.getAll) {
                (result: Result<[Product], Error>) in
                switch result {
                case .success(let products):
                    print("Fetched Products:", products)
                case .failure(let error):
                    print("Error fetching products:", error.localizedDescription)
                }
            }
        }
    }
}
//
//#Preview {
//    ContentView()
//}
