//
//  signupViewController.swift
//  
//
//  Created by Riya Gupta on 01/04/20.
//

import Foundation
import UIKit
import FirebaseAuth

class signupViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        email.delegate = self
        password.delegate = self
        confirmPassword.delegate = self
    }
    
    @IBAction func signupToFeed(_ sender: Any) {
        
        if name.text != ""
        {
            if email.text != ""
            {
                if password.text != ""
                {
                    if confirmPassword.text == password.text
                    {
                        Auth.auth().createUser(withEmail: email.text!, password: password.text!)
                        { (user, error) in
                            
                            if error == nil
                            {
                                self.performSegue(withIdentifier: "signupToFeed", sender: self)
                            }
                            
                        }
                    }
                    else
                    {
                        print("Error!")
                    }
                }
            }
        }
        
    }
    
    @IBAction func signupToHome(_ sender: Any) {
        
        self.performSegue(withIdentifier: "signupToHome", sender: self)
    }
    
}
