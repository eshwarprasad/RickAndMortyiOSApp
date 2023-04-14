//
//  RMService.swift
//  RickAndMorty
//
//  Created by Eshwar on 13/04/23.
//

import Foundation

/// Primary API service object to get ROC

final class RMService{
    
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {

    }
}
