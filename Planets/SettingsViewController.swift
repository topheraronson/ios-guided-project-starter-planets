//
//  SettingsViewController.swift
//  Planets
//
//  Created by Christopher Aronson on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static let shouldShowPlutoKey = "shouldShowPlutoKey"
}

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var showPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateViews()
    }
    
    private func updateViews() {
        showPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func shouldShowPlutoToggle(_ sender: UISwitch) {
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
