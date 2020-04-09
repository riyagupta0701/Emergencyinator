//
//  loginPageViewController.swift
//  Emergencyinator
//
//  Created by Riya Gupta on 31/03/20.
//  Copyright © 2020 Riya Gupta. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class loginPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        email.delegate = self
        password.delegate = self
    }
    
    
    @IBAction func loginToFeed(_ sender: Any) {
        
        if email.text != ""
        {
            if password.text != ""
            {
                Auth.auth().signIn(withEmail: email.text!, password: password.text!)
                {   (user, error) in
                
                    if error == nil
                    {
                        self.performSegue(withIdentifier: "loginToFeed", sender: self)
                    }
                }
            }
            else
            {
                print ("Error!")
            }
        }
    }
    
    
    @IBAction func loginToHome(_ sender: Any) {
       
        self.performSegue(withIdentifier: "loginToHome", sender: self)
    }
}


