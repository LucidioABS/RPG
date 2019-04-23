//
//  AbilityScores.swift
//  RPG
//
//  Created by Jezreel de Oliveira Barbosa on 23/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation

class AbilityScore: Codable {
    // MARK: - Static properties
    
    static let abilityScores: [AbilityScore] = AbilityScore.getJSON()
    
    // MARK: - Public Types
    
    struct Skill: Codable {
        let url: URL
        let name: String
    }
    
    // MARK: - Public Properties
    
    let index: Int
    let name: String
    let fullName: String
    let descriptions: [String]
    let skills: [Skill]
    let url: URL
    
    // MARK: - Public Methods
    
    private class func getJSON() -> [AbilityScore] {
        if let path = Bundle.main.path(forResource: "5e-SRD-Ability-Scores", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe),
            let abilityScores = try? JSONDecoder().decode([AbilityScore].self, from: data) {
            // do the thing
            return abilityScores.sorted(by: {$0.index < $1.index})
        }
        else {
            // handle error
            print("error")
            return []
        }
    }
    
    // MARK: - Initialisation/Lifecycle Methods
    
    // MARK: - Override Methods
    
    // MARK: - Private Types
    
    private enum CodingKeys: String, CodingKey {
        case index = "index"
        case name = "name"
        case fullName = "full_name"
        case descriptions = "desc"
        case skills = "skills"
        case url = "url"
    }
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
}

//fileprivate var privateAbilityScores = AbilityScore.getJSON()
