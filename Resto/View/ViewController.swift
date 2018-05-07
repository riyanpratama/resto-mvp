//
//  ViewController.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Resto"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addVisitorTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "addVisitor", sender: self)
    }
    
    
    @IBAction func viewReportTaapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "viewReport", sender: self)
    }
    
}

