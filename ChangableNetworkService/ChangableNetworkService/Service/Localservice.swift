//
//  Localservice.swift
//  ChangableNetworkService
//
//  Created by Alperen KARACA on 18.12.2024.
//

import Foundation

class Localservice : Networkservice {
    var type: String = "Localservice"
    
    
    func download(_ resource : String ) async throws -> [User] {
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            fatalError("Resource Not Found...")
        }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        
        return try JSONDecoder().decode([User].self, from: data)
    }
}
