PlatziApp

Overview

PlatziApp is a simple shopping app designed to help users browse products, view details, and make purchases. The app is built using Swift and follows best practices for networking and architecture. The goal is to create a robust and clean codebase, while learning and implementing various software design patterns.
This project also serves as a hands-on learning experience using GPT to guide and explain different aspects of Swift development, such as networking, caching, and the repository pattern.
API

The app uses the Fake Store API from escuelajs, a RESTful API that provides endpoints for accessing data like products, categories, users, and authentication. It allows you to fetch all products, get individual product details, create products, and more.
API Endpoints Overview
Products: Fetch all products or a single product by ID.
Categories: List all categories or get products within a category.
Users: Get user information or create new users.
Authentication: Handle user sign-in and sign-up.
Purpose

The main purpose of this project is to:
Learn and Implement Design Patterns: Such as Singleton, Repository Pattern, Dependency Injection, MVVM (Model-View-ViewModel), and Protocol-Oriented Programming.
Set Up a Clean Networking Layer: Abstract and decouple networking logic for easier testing, maintenance, and extensibility.
Experiment with Caching and Persistence: Store data locally using UserDefaults or CoreData to improve user experience.
Follow Best Practices: Adhere to modern Swift and iOS development practices for better code quality and scalability.
Architecture

The app is designed with a modular architecture to improve readability, maintainability, and scalability. Here is a breakdown of the structure and each file's purpose:
Networking Layer
Handles all the network requests and abstracts the logic for fetching and sending data to the API.
APIService.swift:
A Singleton class that is responsible for handling all API requests. It provides a fetchData method to interact with different endpoints and makes HTTP requests using URLSession.
Logs requests and responses for debugging purposes.
Uses dependency injection to allow easy testing with mock network sessions.
APIEndpoint.swift:
Protocol that each endpoint type must conform to. It defines url, httpMethod, body, and contentType.
Acts as a contract for endpoints, ensuring that all endpoints are structured consistently.
HTTPMethod.swift:
An enum for defining HTTP request methods (GET, POST, PUT, DELETE). Adds type safety and avoids hard-coding string values.
ContentType.swift:
An enum for defining Content-Type headers (e.g., application/json, multipart/form-data). Helps in managing the correct headers for different types of requests.
ProductEndpoint.swift:
Conforms to APIEndpoint and handles all the API routes related to prod
