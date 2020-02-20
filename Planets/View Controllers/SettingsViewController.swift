//
//  SettingsViewController.swift
//  Planets
//
//  Created by Kendra McVay on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //MARK - IBOUtlets
    
    @IBOutlet weak var plutoToggle: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    //MARK - IBActions

    @IBAction func didTogglePluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
        // .shouldShowPlutoKey was stored in String+UserDefaults.swift ... do this to prevent future typos.
        
        // User Defaults Dictionary, what this is ^
        /*&
         dictionary
         [
         "ShouldShowPluto" : true
         ]
         */
    }
        
        private func updateViews() {
            plutoToggle.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }

}
