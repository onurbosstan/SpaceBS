//
//  ViewController.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 31.01.2024.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    let viewModel = LogInViewModel()
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func logInButton(_ sender: Any) {
        
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toForgotPassword", sender: nil)
    }
    @IBAction func newAccountButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toNewAcc", sender: nil)
    }
    @IBAction func hidePasswordButton(_ sender: Any) {
        if iconClick 
        {
            passwordText.isSecureTextEntry = false
        } else 
        {
            passwordText.isSecureTextEntry = true
        }
        iconClick = !iconClick
    }
}

