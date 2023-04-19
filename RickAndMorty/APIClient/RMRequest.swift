//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Eshwar on 13/04/23.
//

import Foundation

final class RMRequest{
    //Base URL
    //API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
//    Desired endpoint
    private let endpoint: RMEndpoint
    
//    Path Components for API, if Any
    private let pathComponents: [String]
    
//    Query Components for API request in string format
    private let queryParameters: [URLQueryItem]
    
//    Constructed url for the api request in string format
    private var urlString: String{
        var string = Constants.baseUrl
        string +=  "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            
            let argumentString = queryParameters.compactMap({ parameter in
                if let value = parameter.value{
                    return "\(parameter.name)=\(value)"
                }else{
                    return nil
                }
//
            }).joined(separator: "&")
            
            print(argumentString)
            string += argumentString
        }
        
        return string
    }
    
//    Computed and Constructed API
    public var url: URL?{
        return URL(string: urlString)
        
    }
    
//    Desiored HTTP Method
    public let httpMethod = "GET"
    
//    Mark - public
    
//    Construct Request
//    Parameters:
//    -endpoint: Target endpoint
//    -pathComponents: Collection of Path Componenets
//    -queryParameters: Collection of query parameters
    
    public init(endpoint: RMEndpoint,
                pathComponents: [String] = [],
                queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest{
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
