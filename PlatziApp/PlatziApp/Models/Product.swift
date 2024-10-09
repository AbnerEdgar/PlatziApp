//
//  Product.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Float
    let description: String
    let category: Category
    let image: String
    struct Category: Codable {
        let id: Int
        let name: String
        let image: String
    }
}

extension Product {
    enum Categories {
        static let clothing = Category(
            id: 1, name: "Clothing", image: "https://i.imgur.com/QkIa5tT.jpeg")
        static let electronics = Category(
            id: 2, name: "Electronics", image: "https://i.imgur.com/1twoaDy.jpeg")
        static let books = Category(id: 3, name: "Books", image: "https://i.imgur.com/cHddUCu.jpeg")
        static let home = Category(
            id: 4, name: "Home Appliances", image: "https://i.imgur.com/2BXeZyX.jpeg")
        static let sports = Category(
            id: 5, name: "Sports Equipment", image: "https://i.imgur.com/a1jx2Vp.jpeg")
        static let beauty = Category(
            id: 6, name: "Beauty & Personal Care", image: "https://i.imgur.com/M7fPi5H.jpeg")
        static let toys = Category(id: 7, name: "Toys", image: "https://i.imgur.com/VEZcFhK.jpeg")
        static let groceries = Category(
            id: 8, name: "Groceries", image: "https://i.imgur.com/kj4ED1S.jpeg")
        static let automotive = Category(
            id: 9, name: "Automotive", image: "https://i.imgur.com/pZRWQEz.jpeg")
        static let jewelry = Category(
            id: 10, name: "Jewelry", image: "https://i.imgur.com/Y0GsYOc.jpeg")
        static let furniture = Category(
            id: 11, name: "Furniture", image: "https://i.imgur.com/gTDZAzA.jpeg")
        static let petSupplies = Category(
            id: 12, name: "Pet Supplies", image: "https://i.imgur.com/9eLYPyt.jpeg")
        static let music = Category(
            id: 13, name: "Music Instruments", image: "https://i.imgur.com/b35ZlFP.jpeg")
        static let office = Category(
            id: 14, name: "Office Supplies", image: "https://i.imgur.com/qZTu6Cb.jpeg")
        static let garden = Category(
            id: 15, name: "Garden & Outdoor", image: "https://i.imgur.com/z2uZ6LP.jpeg")
        static let shoes = Category(
            id: 16, name: "Shoes", image: "https://i.imgur.com/wEs2xKp.jpeg")
        static let health = Category(
            id: 17, name: "Health & Wellness", image: "https://i.imgur.com/KTmKh68.jpeg")
        static let baby = Category(
            id: 18, name: "Baby Products", image: "https://i.imgur.com/hTDqZXJ.jpeg")
        static let games = Category(
            id: 19, name: "Video Games", image: "https://i.imgur.com/e9KXJNA.jpeg")
        static let art = Category(
            id: 20, name: "Art & Crafts", image: "https://i.imgur.com/kWvK8DZ.jpeg")
    }
}

extension Product {
    static func clothingItems() -> [Product] {
        return [
            Product(
                id: 1, title: "Majestic T-Shirt", price: 44,
                description: "Stylish t-shirt for casual wear.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/QkIa5tT.jpeg"),
            Product(
                id: 2, title: "Classic Red Hoodie", price: 50,
                description: "Warm hoodie for cozy nights.", category: Product.Categories.clothing,
                image: "https://i.imgur.com/1twoaDy.jpeg"),
            Product(
                id: 3, title: "Blue Denim Jeans", price: 60,
                description: "Slim-fit denim jeans for a modern look.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/abcJeans.jpeg"),
            Product(
                id: 4, title: "Floral Summer Dress", price: 70,
                description: "Lightweight summer dress with floral patterns.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/defDress.jpeg"),
            Product(
                id: 5, title: "Casual Sweater", price: 55,
                description: "Cozy sweater suitable for any occasion.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/ghiSweater.jpeg"),
            Product(
                id: 6, title: "Leather Jacket", price: 120,
                description: "Classic leather jacket for a trendy look.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/jklJacket.jpeg"),
            Product(
                id: 7, title: "White Crew Socks", price: 10,
                description: "Comfortable white socks for everyday use.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/mnoSocks.jpeg"),
            Product(
                id: 8, title: "Formal Blazer", price: 150,
                description: "Tailored blazer for formal occasions.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/pqrBlazer.jpeg"),
            Product(
                id: 9, title: "Black Leggings", price: 25,
                description: "Stretchy and comfortable leggings.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/stuLeggings.jpeg"
            ),
            Product(
                id: 10, title: "Striped Polo Shirt", price: 35,
                description: "Smart and casual striped polo.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/vwxPolo.jpeg"),
            Product(
                id: 11, title: "Denim Shorts", price: 30,
                description: "Stylish denim shorts for summer.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/yzaShorts.jpeg"),
            Product(
                id: 12, title: "V-Neck Sweater", price: 55,
                description: "Elegant V-neck sweater for colder days.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/abcSweater.jpeg"),
            Product(
                id: 13, title: "Plaid Button-Up Shirt", price: 45,
                description: "Classic plaid shirt for casual wear.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/defPlaid.jpeg"),
            Product(
                id: 14, title: "Yoga Pants", price: 35,
                description: "Stretchy and comfortable yoga pants.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/ghiYoga.jpeg"),
            Product(
                id: 15, title: "Cotton Tank Top", price: 20,
                description: "Lightweight tank top for summer wear.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/jklTank.jpeg"),
            Product(
                id: 16, title: "Wool Cardigan", price: 65,
                description: "Soft wool cardigan for a warm layer.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/mnoCardigan.jpeg"
            ),
            Product(
                id: 17, title: "Baseball Cap", price: 15,
                description: "Adjustable cap for sunny days.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/pqrCap.jpeg"),
            Product(
                id: 18, title: "Track Jacket", price: 60,
                description: "Comfortable track jacket for sports.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/stuTrack.jpeg"),
            Product(
                id: 19, title: "Turtleneck Sweater", price: 55,
                description: "Cozy turtleneck sweater for winter.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/vwxTurtle.jpeg"),
            Product(
                id: 20, title: "Graphic Tee", price: 20,
                description: "Trendy t-shirt with graphic print.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/yzaGraphic.jpeg"),
            Product(
                id: 21, title: "Sweatpants", price: 35,
                description: "Soft and cozy sweatpants for lounging.",
                category: Product.Categories.clothing,
                image: "https://i.imgur.com/abcSweatpants.jpeg"),
            Product(
                id: 22, title: "Lace Dress", price: 85,
                description: "Elegant lace dress for special occasions.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/defLace.jpeg"),
            Product(
                id: 23, title: "Quilted Vest", price: 40,
                description: "Lightweight quilted vest for layering.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/ghiVest.jpeg"),
            Product(
                id: 24, title: "Ripped Skinny Jeans", price: 70,
                description: "Stylish skinny jeans with ripped details.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/jklRipped.jpeg"),
            Product(
                id: 25, title: "Khaki Cargo Pants", price: 55,
                description: "Comfortable cargo pants with multiple pockets.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/mnoCargo.jpeg"),
            Product(
                id: 26, title: "Peacoat", price: 120,
                description: "Classic wool peacoat for formal wear.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/pqrPeacoat.jpeg"),
            Product(
                id: 27, title: "High-Waist Skirt", price: 45,
                description: "Flattering high-waist skirt for any outfit.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/stuSkirt.jpeg"),
            Product(
                id: 28, title: "Raincoat", price: 65,
                description: "Waterproof raincoat for rainy days.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/vwxRaincoat.jpeg"
            ),
            Product(
                id: 29, title: "Fleece Pullover", price: 55,
                description: "Warm fleece pullover for outdoor activities.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/yzaFleece.jpeg"),
            Product(
                id: 30, title: "Athletic Shorts", price: 25,
                description: "Breathable shorts for sports and workouts.",
                category: Product.Categories.clothing, image: "https://i.imgur.com/abcAthletic.jpeg"
            ),
            // Continue adding items as needed...
        ]
    }

}
