//
//  SettingsViewController.swift
//  mytips
//
//  Created by Guru Vijayakumar on 7/9/16.
//  Copyright © 2016 Guru Vijayakumar. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onValueChange(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        var tipPercentages = [0.18, 0.20, 0.25]

        defaults.setDouble(tipPercentages[defaultTipControl.selectedSegmentIndex], forKey: "default_tip_selected")
        
        defaults.synchronize()

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
