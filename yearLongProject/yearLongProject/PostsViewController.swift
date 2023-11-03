//
//  PostsViewController.swift
//  yearLongProject
//
//  Created by Ethan Archibald on 9/27/23.
//

import UIKit

class PostsViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if ViewController.isItGettingDarkOut == true {
            mainView.overrideUserInterfaceStyle = .dark
        } else {
            mainView.overrideUserInterfaceStyle = .light
        }
    }

}
