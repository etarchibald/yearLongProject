//
//  ViewController.swift
//  yearLongProject
//
//  Created by Ethan Archibald on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var secondaryView: UIView!
    
    @IBOutlet var allTheText: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    static var isItGettingDarkOut = false
    
    override func viewWillAppear(_ animated: Bool) {
        if ViewController.isItGettingDarkOut == true {
            mainView.overrideUserInterfaceStyle = .dark
        } else {
            mainView.overrideUserInterfaceStyle = .light
        }
    }

}

