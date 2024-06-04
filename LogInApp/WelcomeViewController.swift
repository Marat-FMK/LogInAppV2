//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Marat Fakhrizhanov on 04.06.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
   
    
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var smileLabel: UILabel!
    
    var welcomeL: String!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        welcomeLabel.text = welcomeL
       }

    
}
    


