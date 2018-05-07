//
//  AddVisitorViewController.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import UIKit

class AddVisitorViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var segGender: UISegmentedControl!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var dateVisit: UIDatePicker!
    
    
    var presenter: AddVisitorPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = AddVisitorPresenter(delegate: self)
        self.title = "Add Visitor"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addVisitorTapped(_ sender: UIButton) {
        let gender = (segGender.selectedSegmentIndex == 0) ? "Man" : "Woman"
        
        if let name = txtName.text, let age = txtAge.text {
            guard let intAge = Int(age) else { return }
            
            let vis = Visitor()
            vis.name = name
            vis.gender = gender
            vis.age = intAge
            vis.date = dateVisit.date
            
            presenter?.insertVisitor(visitor: vis)
        } else {
            print("Data cannot be empty")
        }
    }
    
}

extension AddVisitorViewController: AddVisitorDelegate {
    func successInsert() {
        let alert = UIAlertController(title: "Add Visitor", message: "Success added visitor", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (alert) in
            self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    func errorInsert() {
        
    }
}
