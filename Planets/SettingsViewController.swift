//
//  SettingsViewController.swift
//  Planets
//
//  Created by Kobe McKee on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static let shouldShowPlutoKey = "shouldShowPlutoKey"
}



class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //String.shouldShowPlutoKey
        
        updateViews()
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        //tells modal window to go away
    }
    
    private func updateViews() {
        //TODO: update the switch based on saved data
        //shouldShowPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: "showPlutoKey")
        
        //These do the same thing. The extension just eliminates possiblity for error
        
        shouldShowPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }

    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        
        //TODO: update saved data using UserDefaults
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: "shouldShowPlutoKey")
    }
    
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
}
