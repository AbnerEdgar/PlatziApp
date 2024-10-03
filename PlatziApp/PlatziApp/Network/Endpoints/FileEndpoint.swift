//
//  FileEndpoint.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

struct FileEndpoint: APIEndpoint {
    var basePath: String {
        return "\(APIService.shared.baseURL)/files"
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
