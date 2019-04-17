//
//  ViewController.swift
//  RPG
//
//  Created by Lucídio Andrade Barbosa de Souza on 11/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var noteTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
       // noteTextView.delegate = self
        noteTextView.isScrollEnabled = false
        // Do any additional setup after loading the view.
    }
    
   
    


}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}




