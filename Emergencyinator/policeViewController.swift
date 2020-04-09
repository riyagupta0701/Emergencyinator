//
//  policeViewController.swift
//  Emergencyinator
//
//  Created by Riya Gupta on 31/03/20.
//  Copyright © 2020 Riya Gupta. All rights reserved.
//

import Foundation
import UIKit

var pstationName = ["Vasant Kunj: 9000876541", "Vasant Vihar: 9000876542", "South Tukoganj: 9000876543", "North Tukoganj: 9000876544", "Andheri: 9000876545", "Dwarka: 9000876546", "Rohini: 9000876547", "Vallabhnagar: 9000876548", "Vijay Nagar: 9000876549", "Siyaganj: 9000876540"]

class policeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pstationName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pstationNameTableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = pstationName[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var pstationNameTableView: UITableView!
    
    @IBAction func policeToHome(_ sender: Any) {
        self.performSegue(withIdentifier: "policeToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pstationNameTableView.delegate = self
        pstationNameTableView.dataSource = self
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
