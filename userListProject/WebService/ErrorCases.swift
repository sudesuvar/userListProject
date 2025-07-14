//
//  ErrorCases.swift
//  userListProject
//
//  Created by sude on 14.07.2025.
//

import Foundation

enum ErrorCases:LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid Response"
        case .invalidData:
            return "Invalid Data"
        }
    }
}
