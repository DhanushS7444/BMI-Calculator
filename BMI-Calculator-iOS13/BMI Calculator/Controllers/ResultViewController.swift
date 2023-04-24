//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dhanush S on 22/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color1: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color1
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
