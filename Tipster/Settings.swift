//
//  Settings.swift
//  Tipster
//
//  Created by Dylan Miller on 7/26/17.
//  Copyright © 2017 StreetCode Academy. All rights reserved.
//

import Foundation

class Settings {
    
    func Save() {
        
        UserDefaults.standard.set(tipPercentage, forKey: tipPercentageKey)
        UserDefaults.standard.synchronize()
    }
    
    func Load() {
        
        let loadedTipPercentage = UserDefaults.standard.double(forKey: tipPercentageKey)
        if loadedTipPercentage == 0 {
            tipPercentage = 0.15
        }
        else {
            tipPercentage = loadedTipPercentage
        }
    }
    
    var tipPercentage = 0.15
    let tipPercentageKey = "tipPercentage"
}
