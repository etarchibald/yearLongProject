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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
