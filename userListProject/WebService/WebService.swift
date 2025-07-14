//
//  WebService.swift
//  userListProject
//
//  Created by sude on 14.07.2025.
//

import Foundation

final class WebService {
    static func getUsersData() async throws -> [UserModel] {
        let urlString = "https://api.github.com/users"
        guard let url = URL(string: urlString) else {
            throw ErrorCases.invalidURL
        }
       
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        
        do{
            let decoder = JSONDecoder()
            return try decoder.decode([UserModel].self, from: data)
        }catch{
            throw ErrorCases.invalidData
        }
    }
}

