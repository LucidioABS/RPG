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
    
    static let dnd = DND()
    
    // MARK: - Public Properties

    let abilityScores: [AbilityScore]
    
    // MARK: - Public Methods
    
    // MARK: - Initialisation/Lifecycle Methods
    
    private init() {
        self.abilityScores = AbilityScore.abilityScores
    }
    
    // MARK: - Override Methods
    
    // MARK: - Private Properties
    
    // MARK: - Private Methods
    
}

//fileprivate var privateDND = DND()
