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
    }
    
    
    
    
    
    @IBAction func logInPasswordButton() {
        if nameTextField.text != "Marat" || passwordTextField.text != "q" {
            
            let alert = UIAlertController(title: "Pass or Login !!!", message: "write correct data", preferredStyle: .alert)
            
            let goodAction = UIAlertAction(title: "Good", style: .default)
            alert.addAction(goodAction)
            present(alert, animated: true)
            passwordTextField.text = nil
        }
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let name = nameTextField.text else { return }
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeL = " Welcome, \(name)"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue ) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    
    
    
    @IBAction func showName() {
        showAlert(title: " OMG , do you know where you're going ?" , messege: "write -  Marat " )
    }
    
    
    @IBAction func showPassword() {
        showAlert(title: "You reele don`t understand your password?", messege: "You pass : q !")
    }
}
    
    extension ViewController {
        
        
        func showAlert(title: String , messege : String) {
            
            let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
            
            let goodAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(goodAction)
            present(alert, animated: true)
        }
    }

