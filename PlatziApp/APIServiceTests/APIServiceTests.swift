//
//  APIServiceTests.swift
//  APIServiceTests
//
//  Created by Abner Edgar on 03/10/24.
//

import Testing
import XCTest

@testable import PlatziApp

final class APIServiceTests: XCTestCase {
    var apiService: APIService!

    override func setUp() {
        super.setUp()
        apiService = APIService.shared
    }

    override func tearDown() {
        apiService = nil
        super.tearDown()
    }

    func testFetchAllProducts() {
        let expectation = self.expectation(description: "Fetch All Products")

        apiService.fetchData(endpoint: ProductEndpoint.getAll) {
            (result: Result<[Product], Error>) in
            switch result {
            case .success(let products):
                XCTAssertNotNil(products, "Products should not be nil")
                XCTAssertFalse(products.isEmpty, "Products should not be empty")

            case .failure(let error):
                XCTFail("Failed to fetch products: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
