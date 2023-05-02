//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Tingwei Li on 5/1/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    
    /// API constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endPoint: RMEndpoint
    
    /// Path components API, if any
    private let pathComponents: Set<String>
    
    /// Query arguments API, if any
    private let queryParameter: [URLQueryItem]
    
    /// Constructed url for the api request in the string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameter.isEmpty {
            string += "?"
            let argumentSring = queryParameter.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentSring
        }
        
        return string
    }
    
    /// Computed and contructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public var httpMethod = "GET"
    
    // MARK: -Public
    
    /// Construct request
    /// - Parameters:
    ///   - endPoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameter: Collection of query parameters
    public init(
        endPoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameter: [URLQueryItem] = []
    ) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameter = queryParameter
    }
}
