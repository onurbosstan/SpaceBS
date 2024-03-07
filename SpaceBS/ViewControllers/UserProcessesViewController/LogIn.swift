//
//  ViewController.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 31.01.2024.
//

import UIKit
import FirebaseAuth

class LogIn: UIViewController {
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    let viewModel = LogInViewModel()
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func closeKeyboard()
    {
        view.endEditing(true)
    }
    
    @IBAction func logInButton(_ sender: Any) {
        if let email = emailText.text, let password = passwordText.text
        {
            viewModel.signIn(email: email, password: password) { error in
                if error != nil
                {
                    self.makeAlert(titleInput: "Error!", messageInput: "Username or password is wrong. Please try again, if you do not have an account, please register.")
                } else
                {
                    self.updateTabBar()
                }
            }
        }
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
    func updateTabBar() 
    {
        let currentUser = Auth.auth().currentUser
        if currentUser != nil {
            let board = UIStoryboard(name: "Main", bundle: nil)
            let tabBar = board.instantiateViewController(identifier: "tabBar") as! UITabBarController
            tabBar.selectedIndex = 2
            UIApplication.shared.windows.first?.rootViewController = tabBar
            UIView.transition(with: UIApplication.shared.windows.first!, duration: 0.3, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
    }
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

