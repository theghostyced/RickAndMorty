//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by CED on 9/21/24.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    
    /// The API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// The desired endpoint
    private let endpoint: RMEndpoint
    /// The path components for API if any
    /// e.g https://rickandmortyapi.com/api/1
    private let pathComponents: [String]
    /// The query parameters if we have any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the api in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            for pathComponent in pathComponents {
                string += "/\(pathComponent)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            
            let argumentString = queryParameters.compactMap({
                return "\($0.name)=\($0.value!)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// The request url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// HTTP Method
    public let httpMethod = "GET"
    
    /// Our public constructor
    /// - Parameters:
    ///   - endpoint: The endpoint
    ///   - pathComponents: The path components
    ///   - queryParameters: The query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
