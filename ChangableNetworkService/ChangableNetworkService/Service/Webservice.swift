//
//  Webservice.swift
//  ChangableNetworkService
//
//  Created by Alperen KARACA on 18.12.2024.
//

import Foundation

enum NetworkError : Error {
    case invalidURL
    case invalidResponse
}

class Webservice : Networkservice {
    var type: String = "Webservice"
    
    
    func download(_ resource : String) async throws -> [User] {
        guard let url  = URL(string: resource) else {
            throw NetworkError.invalidURL
        }
        
        let (data , response ) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        return try JSONDecoder().decode([User].self , from: data)
        }
    }
    
