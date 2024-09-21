//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by CED on 9/21/24.
//

import Foundation

/// Represents unique API Endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
