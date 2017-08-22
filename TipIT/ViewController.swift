//
//  ViewController.swift
//  TipIT
//
//  Created by Shah, Vidhi on 8/20/17.
//  Copyright © 2017 Shah, Vidhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var numberOfPeople: UILabel!

    @IBOutlet weak var perPersonShare: UILabel!
    let defaults = UserDefaults.standard
    var tipValue:Double = 0.0
    var splitValue:Int = 0

    let tipOptionsList = [0.15, 0.18, 0.20]
    let splitValues = [1,2,3,4,5]

    override func viewDidLoad() {
        super.viewDidLoad()
        billAmount.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tipValue = tipOptionsList[defaults.integer(forKey: "tipValue")]
        splitValue = splitValues[defaults.integer(forKey: "splitValue")]
        tipPercentage.text = String(tipValue*100) + "%"
        if (splitValue > 1) {
            numberOfPeople.text = "Split with " + String(splitValue) + " friends"
        }
        configureAmountLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onScreenTap(_ sender: Any) {
        view.endEditing(true)
    }

    func configureAmountLabels() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = NSLocale.current
        
        let billAmt = Double(billAmount.text!) ?? 0
        let totalAmt = calculateTotalAmt(billAmount: billAmt)
        
        tipAmount.text = formatter.string(from: NSNumber(value: calculateTipAmt(billAmount: billAmt)))
        totalAmount.text = formatter.string(from: NSNumber(value: totalAmt))
        perPersonShare.text = formatter.string(from: NSNumber(value: totalAmt / Double(splitValue)))
    }
    
    @IBAction func calculateTipAmount(_ sender: Any) {
        configureAmountLabels()
    }
    
    func calculateTipAmt(billAmount: Double) -> Double {
        return  billAmount * tipValue
    }
    
    func calculateTotalAmt(billAmount: Double) -> Double {
        return  billAmount + calculateTipAmt(billAmount: billAmount)
    }
}

