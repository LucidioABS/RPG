//
//  Personagem.swift
//  RPG
//
//  Created by Lucídio Andrade Barbosa de Souza on 20/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Personagem {
    var armadura: String
    var vida: String
    var deslocamento: String
    var iniciativa: String
    
    var arma1: String
    var dano1: String
    var ataque1: String
    
    var arma2: String
    var ataque2: String
    var dano2: String
    var arma3: String
    
    var ataque3: String
    var dano3: String
    
    var grandText: String
    
    init(armadura: String, vida: String, deslocamento: String, iniciativa: String, arma1: String, dano1: String, ataque1: String, arma2: String, ataque2: String, dano2: String, arma3: String, ataque3: String, dano3: String, grandText: String) {
        self.armadura = armadura
        self.vida = vida
        self.deslocamento = deslocamento
        self.iniciativa = iniciativa
        
        self.arma1 = arma1
        self.ataque1 = ataque1
        self.dano1 = dano1
        
        self.arma2 = arma2
        self.ataque2 = ataque2
        self.dano2 = dano2
        
        self.arma3 = arma3
        self.ataque3 = ataque3
        self.dano3 = dano3
        
        self.grandText = grandText
        
    }
    
    func saveCD(armadura: String, vida: String, deslocamento: String, iniciativa: String, arma1: String, dano1: String, ataque1: String, arma2: String, ataque2: String, dano2: String, arma3: String, ataque3: String, dano3: String, grandText: String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let persongemBD = NSEntityDescription.insertNewObject(forEntityName: "Personagem", into: context)
        
       
        do {
            try context.save()
            print("sucesso ao salvar")
        }catch{
            print("erro ao salvar")
        }
        
    }
}


