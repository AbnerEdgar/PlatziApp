# PlatziApp

## Overview
**PlatziApp** is a simple shopping app designed to help users browse products, view details, and make purchases. The app is built using **Swift** and follows best practices for networking and architecture. The goal is to create a robust and clean codebase while learning and implementing various software design patterns.

This project also serves as a hands-on learning experience using **GPT** to guide and explain different aspects of Swift development, such as networking, caching, and the repository pattern.

## API
The app uses the **Fake Store API** from [escuelajs](https://fakeapi.platzi.com/), a RESTful API that provides endpoints for accessing data like products, categories, users, and authentication. It allows you to fetch all products, get individual product details, create products, and more.

### API Endpoints Overview
- **Products**: Fetch all products or a single product by ID.
- **Categories**: List all categories or get products within a category.
- **Users**: Get user information or create new users.
- **Authentication**: Handle user sign-in and sign-up.

## Purpose
The main purpose of this project is to:
1. **Learn and Implement Design Patterns**: Such as **Singleton**, **Repository Pattern**, **Dependency Injection**, **MVVM (Model-View-ViewModel)**, and **Protocol-Oriented Programming**.
2. **Set Up a Clean Networking Layer**: Abstract and decouple networking logic for easier testing, maintenance, and extensibility.
3. **Experiment with Caching and Persistence**: Store data locally using `UserDefaults` or `CoreData` to improve user experience.
4. **Follow Best Practices**: Adhere to modern Swift and iOS development practices for better code quality and scalability.

## Architecture
The app is designed with a modular architecture to improve readability, maintainability, and scalability. Here is a breakdown of the structure and each file's purpose:

### Networking Layer
Handles all the network requests and abstracts the logic for fetching and sending data to the API.
- **`APIService.swift`**: 
  - A `Singleton` class responsible for handling all API requests. It provides a `fetchData` method to interact with different endpoints and makes HTTP requests using `URLSession`.
  - Logs requests and responses for debugging purposes.
  - Uses dependency injection to allow easy testing with mock network sessions.

- **`APIEndpoint.swift`**: 
  - Protocol that each endpoint type must conform to. It defines `url`, `httpMethod`, `body`, and `contentType`.
  - Acts as a contract for endpoints, ensuring that all endpoints are structured consistently.

- **`HTTPMethod.swift`**:
  - An enum for defining HTTP request methods (`GET`, `POST`, `PUT`, `DELETE`). Adds type safety and avoids hard-coding string values.

- **`ContentType.swift`**:
  - An enum for defining `Content-Type` headers (e.g., `application/json`, `multipart/form-data`). Helps in managing the correct headers for different types of requests.

- **`ProductEndpoint.swift`**: 
  - Conforms to `APIEndpoint` and handles all the API routes related to products (fetching all products, getting details for a product, creating a product, etc.).
  - Uses a base path to avoid repetitive code for the endpoint URL.
  
### Caching Layer
Manages storing and retrieving data from local storage to reduce network requests and improve app performance.
- **`CacheService.swift`** (Protocol):
  - Defines a contract for saving and retrieving data locally.
  - Makes the cache storage mechanism swappable, e.g., between `UserDefaults` and `CoreData`.

- **`UserDefaultsCacheService.swift`**:
  - Implements `CacheService` using `UserDefaults` for simple key-value storage.
  - Provides `get` and `save` methods for storing `Encodable` and `Decodable` data.

### Repository Layer
Abstracts the data-fetching logic to provide a single source of data for the ViewModel and make it independent of the underlying data source (network or cache).
- **`ProductRepositoryProtocol.swift`**:
  - Defines the methods for fetching product data, such as `fetchAllProducts` and `fetchProduct(by id:)`.
  - Allows mocking of repository methods for testing purposes.

- **`ProductRepository.swift`**:
  - Implements `ProductRepositoryProtocol` to handle the logic for fetching data from both the network and cache.
  - Checks cache for data first, and if unavailable, fetches from the network and then saves the data to cache.

### ViewModel Layer
The ViewModel is responsible for fetching and processing data to be displayed by the views, following the **MVVM** pattern.
- **`ProductViewModel.swift`**:
  - A `ViewModel` for managing the state of product-related views.
  - Uses `ProductRepository` to fetch data and exposes properties (like `products`) to be used in SwiftUI views.
  - Uses `@Published` properties to notify SwiftUI views of any data changes.

### Utilities
Contains helper classes and extensions to simplify common tasks throughout the app.
- **`URLSession+Extensions.swift`**:
  - Provides utility methods for `URLSession`, such as handling custom requests or parsing JSON responses.
  
- **`View+Extensions.swift`**:
  - Contains SwiftUI view extensions to improve readability and reusability.

### Resources
Stores assets and localization strings used in the app.
- **`Assets.xcassets`**:
  - Contains all images and icons used throughout the app.
  
- **`Localizable.strings`**:
  - Stores all the localized strings for the app, allowing for multiple language support.

### Tests
Contains test files for both the **UI tests** and **unit tests** of the networking layer.
- **`PlatziAppUITests.swift`**:
  - Manages user interface tests to verify that the app flows correctly from a user’s perspective.
  
- **`APIServiceTests.swift`**:
  - Manages unit tests for the network layer, ensuring that endpoints return expected data and that cache fallback works as expected.

## How to Use the Project
1. **Clone the Repo**: `git clone [REPO_URL]`.
2. **Install Dependencies**: Open `PlatziApp.xcodeproj` in Xcode.
3. **Run the App**: Build and run the project in the Xcode simulator or on a device.
4. **Testing**: Use `⌘U` to run all unit and UI tests.

## Future Improvements
- Complete all missing endpoints for full API functionality.
- Extend caching capabilities to handle other data types and use `CoreData` for more complex storage.
- Improve error handling and implement retry mechanisms for failed network requests.
- Add more tests for edge cases and improve the coverage of unit and UI tests.
