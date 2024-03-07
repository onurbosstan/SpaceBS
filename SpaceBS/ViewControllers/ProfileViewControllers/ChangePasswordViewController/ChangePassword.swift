//
//  ChangePassword.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.03.2024.
//

import UIKit
import FirebaseAuth

class ChangePassword: UIViewController {
    @IBOutlet weak var currentPasswordText: UITextField!
    @IBOutlet weak var newPasswordText: UITextField!
    var currentIconClick = true
    var newPasswordIconClick = true
    var viewModel = ChangePasswordViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func confirmButton(_ sender: Any) {
        guard let currentPassword = currentPasswordText.text, !currentPassword.isEmpty else {
            self.makeAlert(titleInput: "Error!", messageInput: "Please enter a new password.")
            return
        }
        guard let newPassword = newPasswordText.text, !newPassword.isEmpty else {
              self.makeAlert(titleInput: "Error!", messageInput: "Please enter a new password.")
              return
          }
        viewModel.verifyCurrentPassword(currentPassword: currentPassword) { [weak self] isValidPassword in
                guard let self = self else { return }
                if isValidPassword {
                    self.viewModel.changePassword(newPassword: newPassword) { [weak self] error in
                        if let error = error {
                            self?.makeAlert(titleInput: "Error!", messageInput: "Password change failed: \(error.localizedDescription)")
                        } else {
                            self?.makeAlert(titleInput: "Success!", messageInput: "Password change successfully")
                        }
                    }
                } else {
                    self.makeAlert(titleInput: "Error!", messageInput: "Incorrect current password.")
                }
            }
    }
    @IBAction func currentEyeButton(_ sender: Any) {
        if currentIconClick {
            currentPasswordText.isSecureTextEntry = false
        } else {
            currentPasswordText.isSecureTextEntry = true
        }
        currentIconClick = !currentIconClick
    }
    @IBAction func newPasswordEyeButton(_ sender: Any) {
        if newPasswordIconClick {
            newPasswordText.isSecureTextEntry = false
        } else {
            newPasswordText.isSecureTextEntry = true
        }
        newPasswordIconClick = !newPasswordIconClick
    }
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
