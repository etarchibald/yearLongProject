//
//  SettingsViewController.swift
//  yearLongProject
//
//  Created by Ethan Archibald on 9/27/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkModeSwitch.isOn = ViewController.isItGettingDarkOut
    }
    
    @IBAction func darkAction(_ sender: UISwitch) {
        ViewController.isItGettingDarkOut = darkModeSwitch.isOn
        if ViewController.isItGettingDarkOut == true {
            mainView.overrideUserInterfaceStyle = .dark
        } else {
            mainView.overrideUserInterfaceStyle = .light
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        ViewController.isItGettingDarkOut = darkModeSwitch.isOn
    }
    
}
