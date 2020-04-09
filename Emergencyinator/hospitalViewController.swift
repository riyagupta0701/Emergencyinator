//
//  hospitalViewController.swift
//  Emergencyinator
//
//  Created by Riya Gupta on 31/03/20.
//  Copyright © 2020 Riya Gupta. All rights reserved.
//

import Foundation
import UIKit

var hstationName = ["Apollo Hospital: 9011876541", "Sharda Hospital: 9011876542", "CHL Hospital: 9011876543", "Gokuldham Hospital: 9011876544", "Curewell Hospital: 9011876545", "LIG Hospital: 9011876546", "MG Hospital: 9011876547", "Nehru Hospital: 9011876548", "Holkar Hospital: 9011876549", "Kailash Hospital: 9011876540"]

class hospitalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hstationName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = hstationNameTableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = hstationName[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var hstationNameTableView: UITableView!
    
    @IBAction func hospitalToHome(_ sender: Any) {
        self.performSegue(withIdentifier: "hospitalToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hstationNameTableView.delegate = self
        hstationNameTableView.dataSource = self
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

