//
//  Networkservice.swift
//  ChangableNetworkService
//
//  Created by Alperen KARACA on 18.12.2024.
//

import Foundation

protocol Networkservice {
    func download(_ resource : String ) async throws -> [User]
    var type : String { get }
}
