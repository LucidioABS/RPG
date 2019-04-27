//
//  DND.swift
//  RPG
//
//  Created by Jezreel de Oliveira Barbosa on 16/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation

class DND {
    
    // MARK: - Static properties
    
    static let shared = DND()
    
    // MARK: - Public Properties

    let abilityScores: [AbilityScore]
    let conditions: [Condition]
    let languages: [Language]
    let magicSchools: [MagicSchool]
    let skills: [Skill]
    let traits: [Trait]
    
    // MARK: - Public Methods
    
    private class func decodeJSONFile<T>(from jsonResource: String, to type: [T].Type) -> [T] where T: Decodable {
        if let path = Bundle.main.path(forResource: jsonResource, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe),
            let decoded = try? JSONDecoder().decode(type, from: data) {
            // do the thing
            return decoded
        }
        else {
            // handle error
            print("Decode from json error")
            return []
        }
    }
    
    // MARK: - Initialisation/Lifecycle Methods
    
    private init() {
        self.abilityScores = DND.decodeJSONFile(from: AbilityScore.jsonResource, to: [AbilityScore].self)
        self.conditions = DND.decodeJSONFile(from: Condition.jsonResource, to: [Condition].self)
        self.languages = DND.decodeJSONFile(from: Language.jsonResource, to: [Language].self)
        self.magicSchools = DND.decodeJSONFile(from: MagicSchool.jsonResource, to: [MagicSchool].self)
        self.skills = DND.decodeJSONFile(from: Skill.jsonResource, to: [Skill].self)
        self.traits = DND.decodeJSONFile(from: Trait.jsonResource, to: [Trait].self)
    }
    
    // MARK: - Override Methods
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
}
