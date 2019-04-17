//
//  ViewController.swift
//  RPG
//
//  Created by Lucídio Andrade Barbosa de Souza on 11/04/19.
//  Copyright © 2019 Lucídio Andrade Barbosa de Souza. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var noteTextView: UITextView!
    
    @IBOutlet weak var grandTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.hideKeyboardWhenTappedAround()
       // noteTextView.delegate = self
        noteTextView.isScrollEnabled = false
        // Do any additional setup after loading the view.
   
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
         NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
         NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keyboardWillChange(notification: Notification){
        if grandTextView.isFirstResponder{
        print("Keyboard will show: \(notification.name.rawValue)")
        view.frame.origin.y = -250
        }
        
        
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
        view.frame.origin.y = .leastNormalMagnitude
    }
    
}





