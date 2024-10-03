//
//  Services.swift
//  PlatziApp
//
//  Created by Abner Edgar on 03/10/24.
//

import Foundation

final class APIService {
    static let shared = APIService()

    let baseURL = "https://api.escuelajs.co/api/v1"
    private let urlSession = URLSession.shared

    private init() {}

    func fetchData<T: Decodable>(
        endpoint: APIEndpoint,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let url = endpoint.url else {
            completion(.failure(NetworkError.invalidURL))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = endpoint.httpMethod.rawValue

        logRequest(request)

        if let body = endpoint.body {
            request.httpBody = body
            if let contentType = endpoint.contentType {
                request.addValue(contentType.rawValue, forHTTPHeaderField: "Content-Type")
            }
        }

        urlSession.dataTask(with: url) { (data, response, error) in

            self.logResponse(data: data, response: response, error: error)

            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NetworkError.invalidData))
                return
            }

            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch let decodingError {
                completion(.failure(decodingError))
            }
        }.resume()
    }

    func logRequest(_ request: URLRequest) {
        print("\n---------------------------------")
        print("Request URL: \(request.url?.absoluteString ?? "")")
        print("HTTP Method: \(request.httpMethod ?? "")")
        if let headers = request.allHTTPHeaderFields {
            print("Headers: \(headers)")
        }
        if let body = request.httpBody {
            print("Body: \(String(data: body, encoding: .utf8) ?? "")")
        }
        print("---------------------------------")
    }

    func logResponse(
        data: Data?,
        response: URLResponse?,
        error: Error?
    ) {
        if let error = error {
            print("❌ Error: \(error.localizedDescription)")
        }

        if let response = response as? HTTPURLResponse {
            print("✅ Status Code: \(response.statusCode)")
            print("---------------------------------")
        }

        if let data = data {
            print("Response Data:\n \(String(data: data, encoding: .utf8) ?? "")")
        }
        print("---------------------------------\n")
    }
}
