//
//  RegisterViewController.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 2.02.2024.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        
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
