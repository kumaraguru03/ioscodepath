//
//  ViewController.swift
//  mytips
//
//  Created by Guru Vijayakumar on 7/8/16.
//  Copyright © 2016 Guru Vijayakumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipAmtLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipAmtLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        let selectedDefaultTip = NSUserDefaults.standardUserDefaults().doubleForKey("default_tip_selected")

        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * selectedDefaultTip
        let total = billAmount + tip
        
        tipAmtLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.20, 0.25]
        let tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercent
        let total = billAmount + tip
        
        tipAmtLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

