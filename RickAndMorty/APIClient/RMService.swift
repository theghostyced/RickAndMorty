//
//  RMService.swift
//  RickAndMorty
//
//  Created by CED on 9/21/24.
//

import Foundation


/// Primary APIService object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {
        
    }
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting: T.Type,
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        
    }
}
