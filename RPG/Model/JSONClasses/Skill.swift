//
//  Skill.swift
//  RPG
//
//  Created by Jezreel de Oliveira Barbosa on 25/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation

class Skill: Codable {
    // MARK: - Static properties
    
    static let shared = Skill.decodeJSONFile()
    
    // MARK: - Public Types
    
    struct AbilityScoreReference: Codable {
        let url: URL
        let name: String
    }
    
    // MARK: - Public Properties
    
    let index: Int
    let name: String
    let descriptions: [String]
    let abilityScoresReference: AbilityScoreReference
    let url: URL
    
    // MARK: - Public Methods
    
    // MARK: - Initialisation/Lifecycle Methods
    
    // MARK: - Override Methods
    
    // MARK: - Private Types
    
    private enum CodingKeys: String, CodingKey {
        case index = "index"
        case name = "name"
        case descriptions = "desc"
        case abilityScoresReference = "ability_score"
        case url = "url"
    }
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
    
    private class func decodeJSONFile() -> [Skill] {
        if let path = Bundle.main.path(forResource: "5e-SRD-Skills", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe),
            let skills = try? JSONDecoder().decode([Skill].self, from: data) {
            // do the thing
            return skills.sorted(by: {$0.index < $1.index})
        }
        else {
            // handle error
            print("error")
            return []
        }
    }
}
