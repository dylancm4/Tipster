//
//  SettingsViewController.swift
//  Tipster
//
//  Created by Dylan Miller on 7/26/17.
//  Copyright © 2017 StreetCode Academy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tipControl.selectedSegmentIndex = Settings.shared.getTipPercentageIndex()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        Settings.shared.setTipPercentage(index: tipControl.selectedSegmentIndex)
        Settings.shared.save()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
