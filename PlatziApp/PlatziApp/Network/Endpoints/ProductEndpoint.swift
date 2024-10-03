//
//  ProductEndpoint.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

enum ProductEndpoint: APIEndpoint {
    case getAll
    case getById(id: Int)
    case create(data: [String: Any])
    case uploadImage(data: Data)

    var basePath: String {
        return "\(APIService.shared.baseURL)/products"
    }

    var url: URL? {
        switch self {
        case .getAll:
            return URL(string: basePath)
        case .getById(let id):
            return URL(string: "\(basePath)/\(id)")
        case .create:
            return URL(string: basePath)
        case .uploadImage:
            return URL(string: "\(basePath)/upload")
        }
    }

    var httpMethod: HTTPMethod {
        switch self {
        case .getAll, .getById:
            return .GET
        case .create, .uploadImage:
            return .POST
        }
    }

    var body: Data? {
        switch self {
        case .create(let data):
            return try? JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
        default:
            return nil
        }
    }

    var contentType: ContentType? {
        switch self {
        case .create:
            return .json
        case .uploadImage:
            return .formData
        default:
            return nil
        }
    }

}
