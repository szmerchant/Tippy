//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Saman Merchant on 12/30/18.
//  Copyright © 2018 Saman Merchant. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func defaultPercentageChanged(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        defaults.set(defaultPercentage.selectedSegmentIndex, forKey: "defaultPercentageIndex")
        
        defaults.synchronize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard
        defaultPercentage.selectedSegmentIndex = defaults.integer(forKey: "defaultPercentageIndex")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
