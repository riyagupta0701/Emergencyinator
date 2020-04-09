//
//  ViewController.swift
//  Emergencyinator
//
//  Created by Riya Gupta on 27/03/20.
//  Copyright © 2020 Riya Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }    
    
    @IBAction func homeToLogin(_ sender: Any) {
        self.performSegue(withIdentifier: "homeToLogin", sender: self)
    }
    
    
    @IBAction func homeToSignup(_ sender: Any) {
        self.performSegue(withIdentifier: "homeToSignup", sender: self)
    }
}

