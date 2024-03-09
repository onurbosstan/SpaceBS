//
//  ChangeEmail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 9.03.2024.
//

import UIKit

class ChangeEmail: UIViewController {
    @IBOutlet weak var newEmailText: UITextField!
    var changeEmailViewModel = ChangeEmailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func confirmButton(_ sender: Any) {
    guard let newEmail = newEmailText.text, !newEmail.isEmpty else {
    makeAlert(titleInput: "Error!", messageInput: "Please enter your new email address.")
    return
    }
    changeEmailViewModel.changeEmail(newEmail: newEmail) { error in
        if let error = error {
            self.makeAlert(titleInput: "Error!", messageInput: "An error occurred while changing email: \(error.localizedDescription)")
    } else {
    self.makeAlert(titleInput: "Success!", messageInput: "Your email address has been changed successfully.")
        }
    }
}
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
