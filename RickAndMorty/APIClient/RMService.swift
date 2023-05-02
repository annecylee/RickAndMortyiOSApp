//
//  RMService.swift
//  RickAndMorty
//
//  Created by Tingwei Li on 5/1/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Sahred singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instance
    ///   - type: the type of object we expect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>)->Void) {
        
    }
}
