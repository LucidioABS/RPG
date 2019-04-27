//
//  AbilityScore.swift
//  RPG
//
//  Created by Jezreel de Oliveira Barbosa on 23/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation

class AbilityScore: Codable {
    // MARK: - Static properties
    
    static let jsonResource = "5e-SRD-Ability-Scores"
    
    // MARK: - Public Types
    
    struct SkillReference: Codable {
        let url: URL
        let name: String
    }
    
    // MARK: - Public Properties
    
    let index: Int
    let name: String
    let fullName: String
    let descriptions: [String]
    let skillsReference: [SkillReference]
    let url: URL
    
    // MARK: - Public Methods
    
    // MARK: - Initialisation/Lifecycle Methods
    
    // MARK: - Override Methods
    
    // MARK: - Private Types
    
    private enum CodingKeys: String, CodingKey {
        case index = "index"
        case name = "name"
        case fullName = "full_name"
        case descriptions = "desc"
        case skillsReference = "skills"
        case url = "url"
    }
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
}
