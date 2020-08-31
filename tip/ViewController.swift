//
//  ViewController.swift
//  tip
//
//  Created by Christopher Jimenez on 8/29/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
        
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        let bill  = Double(billField.text!) ?? 0
        
        let tipPercents = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

