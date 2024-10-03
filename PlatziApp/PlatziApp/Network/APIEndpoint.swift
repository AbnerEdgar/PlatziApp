//
//  APIEndpoint.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

protocol APIEndpoint {
    var basePath: String { get }
    var url: URL? { get }
    var httpMethod: HTTPMethod { get }
    var body: Data? { get }
    var contentType: ContentType? { get }
}
