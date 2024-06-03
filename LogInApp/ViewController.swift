//
//  ViewController.swift
//  LogInApp
//
//  Created by Marat Fakhrizhanov on 04.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logInPasswordButton() {
       
    }
    
    
    @IBAction func showName() {
        let alert = UIAlertController(title: "OMG , do you know where you're going ?", message: "write - @ Marat @", preferredStyle: .alert)
        
        let goodAction = UIAlertAction(title: "Good", style: .default)
        alert.addAction(goodAction)
        present(alert, animated: true)
    }
    
    
    @IBAction func showPassword() {
        let alert = UIAlertController(title: "You reele don`t understand your password?", message: "You pass : 12345", preferredStyle: .alert  )
        let understandAction = UIAlertAction(title: "understand", style: .default)
        alert.addAction(understandAction)
        present(alert, animated: true)
    }
    
    
    
    
}

