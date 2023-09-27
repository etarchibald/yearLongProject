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
        // Do any additional setup after loading the view.
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
