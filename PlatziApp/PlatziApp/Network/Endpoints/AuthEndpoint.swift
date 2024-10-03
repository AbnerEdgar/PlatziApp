//
//  AuthEndpoint.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

struct AuthEndpoint: APIEndpoint {
    var basePath: String {
        return "\(APIService.shared.baseURL)/login"
    }

    var url: URL? {
        return nil
    }

    var httpMethod: HTTPMethod {
        return .GET
    }

    var body: Data?

    var contentType: ContentType?
}
