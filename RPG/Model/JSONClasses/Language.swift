//
//  Language.swift
//  RPG
//
//  Created by Jezreel de Oliveira Barbosa on 26/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation

class Language: Codable {
    
    // MARK: - Static properties
    
    static let jsonResource = "5e-SRD-Languages"
    
    // MARK: - Public Types
    
    // MARK: - Public Properties
    
    let index: Int
    let name: String
    let type: String
    let typicalSpeakers: [String]
    let script: String
    let url: URL
    
    // MARK: - Public Methods
    
    // MARK: - Initialisation/Lifecycle Methods
    
    // MARK: - Override Methods
    
    // MARK: - Private Types
    
    private enum CodingKeys: String, CodingKey {
        case index = "index"
        case name = "name"
        case type = "type"
        case typicalSpeakers = "typical_speakers"
        case script =  "script"
        case url = "url"
    }
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
}
