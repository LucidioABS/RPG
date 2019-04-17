//
//  ExtesionTextViewAutoSize.swift
//  RPG
//
//  Created by Lucídio Andrade Barbosa de Souza on 16/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import Foundation
import UIKit


extension ViewController: UITextViewDelegate{
    
    func TextViewDidChange(_ noteTextView: UITextView){
        print(noteTextView.text)
        let size = CGSize(width: view.frame.width, height: .infinity)
        let stimatedSize = noteTextView.sizeThatFits(size)
        noteTextView.constraints.forEach{(constraint) in
            if constraint.firstAttribute == .height {
                constraint.constant = 100
            }
            
        }
    }
}
