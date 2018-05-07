//
//  ReportViewController.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet weak var lbMen: UILabel!
    @IBOutlet weak var lbWomen: UILabel!
    @IBOutlet weak var lbAvgAge: UILabel!
    
    var presenter: ReportPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = ReportPresenter(delegate: self)
        
        setupView()
    }

    func setupView() {
        let month = Date().toString(format: "MMM")
        self.title = "Report \(month)"

        if let men = presenter?.getNumberOfVisitorOfManInMonth() {
            self.lbMen.text = String(describing: men)
        }
        
        if let women = presenter?.getNumberOfVisitorOfWomanInMonth() {
            self.lbWomen.text = String(describing: women)
        }

        if let average = presenter?.getAverageAgeInMonth() {
            self.lbAvgAge.text = String(average)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ReportViewController: ReportDelegate {
    
}
