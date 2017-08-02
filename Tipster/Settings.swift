//
//  Settings.swift
//  Tipster
//
//  Created by Dylan Miller on 7/26/17.
//  Copyright © 2017 StreetCode Academy. All rights reserved.
//

import Foundation

class Settings {
    
    // Shared instance.
    static var shared = Settings()

    func save() {
        
        UserDefaults.standard.set(tipPercentage, forKey: tipPercentageKey)
        UserDefaults.standard.synchronize()
    }
    
    func load() {
        
        let loadedTipPercentage = UserDefaults.standard.double(forKey: tipPercentageKey)
        if loadedTipPercentage == 0 {
            tipPercentage = 0.15
        }
        else {
            tipPercentage = loadedTipPercentage
        }
    }
    
    func getTipPercentageIndex() -> Int {
        
        if tipPercentage == 0.15 {
            
            return 0
        }
        else if tipPercentage == 0.2 {
            
            return 1
        }
        else if tipPercentage == 0.25 {
            
            return 2
        }
        else {
            
            return 0
        }
    }
    
    func setTipPercentage(index: Int) {
    
        if index > 2 {
            
            return
        }
        
        tipPercentage = tipPercentages[index]
    }
    
    var tipPercentage = 0.15
    let tipPercentageKey = "tipPercentage"
    let tipPercentages = [0.15, 0.2, 0.25]
}
