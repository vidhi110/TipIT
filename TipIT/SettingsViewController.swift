//
//  SettingsViewController.swift
//  TipIT
//
//  Created by Shah, Vidhi on 8/20/17.
//  Copyright © 2017 Shah, Vidhi. All rights reserved.
//

import Foundation


import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipSelectionControl: UISegmentedControl!
    @IBOutlet weak var splitBillControl: UISegmentedControl!
    let defaults = UserDefaults.standard

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tipSelectionControl.selectedSegmentIndex = defaults.integer(forKey: "tipValue")
        splitBillControl.selectedSegmentIndex = defaults.integer(forKey: "splitValue") - 1
    }
    
    @IBAction func selectTipValueAmount(_ sender: Any) {
        defaults.set(tipSelectionControl.selectedSegmentIndex, forKey: "tipValue")
        defaults.synchronize()
    }
    
    @IBAction func splitBill(_ sender: Any) {
        defaults.set(splitBillControl.selectedSegmentIndex, forKey: "splitValue")
        defaults.synchronize()
    }
}
