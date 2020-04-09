//
//  fireViewController.swift
//  Emergencyinator
//
//  Created by Riya Gupta on 31/03/20.
//  Copyright © 2020 Riya Gupta. All rights reserved.
//

import Foundation
import UIKit

var fstationName = ["Vijay Nagar: 9022876541", "Shiv Nagar: 9022876542", "South Tukoganj: 9022876543", "North Tukoganj: 9022876544", "Andheri: 9022876545", "Dwarka: 9022876546", "Rohini: 9022876547", "Vallabhnagar: 9022876548", "Rajendra Nagar: 9022876549", "Siyaganj: 9022876540"]

class fireViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
     
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fstationName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fstationNameTableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath)
        cell.textLabel?.text = fstationName[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var fstationNameTableView: UITableView!
    
    @IBAction func fireToHome(_ sender: Any) {
        self.performSegue(withIdentifier: "fireToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fstationNameTableView.delegate = self
        fstationNameTableView.dataSource = self
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

