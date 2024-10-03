//
//  Product.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

struct Product: Codable {
    let id: Int
    let title: String
    let price: Int
    let description: String
    let category: Category
    let image: String

    struct Category: Codable {
        let id: Int
        let name: String
        let image: String
    }
}
