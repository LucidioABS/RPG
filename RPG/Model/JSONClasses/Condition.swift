//
//  Condition.swift
//  RPG
//
//  Created by Jezreel de Oliveira Barbosa on 26/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation

class Condition: Codable {
    
    // MARK: - Static properties
    
    static let jsonResource = "5e-SRD-Conditions"
    
    // MARK: - Public Types
    
    // MARK: - Public Properties
    
    let index: Int
    let name: String
    let descriptions: [String]
    let url: URL
    
    // MARK: - Public Methods
    
    // MARK: - Initialisation/Lifecycle Methods
    
    // MARK: - Override Methods
    
    // MARK: - Private Types
    
    private enum CodingKeys: String, CodingKey {
        case index = "index"
        case name = "name"
        case descriptions = "desc"
        case url = "url"
    }
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
}
