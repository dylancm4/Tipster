//
//  ViewController.swift
//  Tipster
//
//  Created by StreetCode Academy on 7/17/17.
//  Copyright © 2017 StreetCode Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: UITextField) {
        
        let billAmount = Double(billAmountTextField.text!) ?? 0
        let tipAmount = billAmount * 0.2
        let totalAmount = billAmount + tipAmount
        
        tipAmountLabel.text = String(format: "$%f", tipAmount)
        totalAmountLabel.text = String(format: "$%f", totalAmount)
    }
}

